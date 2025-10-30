%% Lab 2: 2D Convolution & FIR Filters (Blur, Sharpen, Edges)
% Course: Mathematical Algorithms (DSP) — Image Processing Labs
% -------------------------------------------------------------------------
close all; clear; clc;

% --- MODIFICATION START: Loading different vegetable images ---
% Priority 1: Check for a colorful vegetable (e.g., broccoli or bell pepper)
if exist('broccoli.jpg','file')
    I_color = imread('broccoli.jpg');
elseif exist('carrot.png','file')
    I_color = imread('carrot.png');
elseif exist('onion.tif','file')
    I_color = repmat(imread('onion.tif'), 1, 1, 3); % fallback to a standard image if needed
else
    % Final fallback to cameraman if no vegetable images are found
    warning('No specific vegetable image found. Falling back to cameraman.tif.');
    I_color = repmat(imread('cameraman.tif'), 1, 1, 3);
end
% --- MODIFICATION END ---

% Convert to normalized grayscale for math operations
I_norm = im2double(rgb2gray(I_color));

%% 1) Delta Image and Impulse Response Visualization
% Create a visualization of a simple filter's response to an impulse (single white pixel).
impulse = zeros(101, 101); 
impulse(51, 51) = 1;

% Define a simple 5x5 averaging kernel (h_avg)
h_mean_5 = ones(5, 5) / 25; 

% Convolve the impulse with the kernel to get the impulse response visualization
response_vis = conv2(impulse, h_mean_5, 'same');

figure; imagesc(response_vis); 
axis image off; colorbar; 
title('Impulse Response of 5x5 Mean Filter');

%% 2) Low-pass Filtering: Mean vs Gaussian Blurring
% Low-pass filters remove high frequencies (i.e., blur).

% --- Mean Kernels (Box) ---
k_mean_3 = ones(3, 3) / 9;
k_mean_9 = ones(9, 9) / 81; % Larger mean kernel

% --- Gaussian Kernel (Separable) ---
% Using fspecial to generate standard Gaussian filter
sigma_val = 1.0;
k_gauss = fspecial('gaussian', 7, sigma_val); 

% Apply filters using imfilter (for robust boundary handling)
I_mean_3 = imfilter(I_norm, k_mean_3, 'replicate');
I_mean_9 = imfilter(I_norm, k_mean_9, 'replicate');
I_gauss_filt = imfilter(I_norm, k_gauss, 'replicate');

figure; montage({I_norm, I_mean_3, I_mean_9, I_gauss_filt}, 'Size', [1 4]);
title('Original Vegetable Image | Mean 3x3 Blur | Mean 9x9 Blur | Gaussian 7x7 Blur');

%% 3) Sharpening via Unsharp Masking
% Unsharp masking enhances edges using the difference between original and blurred images.

I_blurred = I_gauss_filt; % Re-use the Gaussian blur from section 2

% Calculate the High-Pass Component (the mask)
high_pass_mask = I_norm - I_blurred; 

% Sharpen: Original + (Gain * Mask)
enhancement_gain = 1.2;
I_enhanced_sharp = max(min(I_norm + enhancement_gain * high_pass_mask, 1), 0);

figure; montage({I_norm, I_blurred, high_pass_mask, I_enhanced_sharp}, 'Size', [1 4]);
title('Original | Blurred (Low-Pass) | Edge Mask (High-Pass) | Sharpened Result');

%% 4) Edge Detection: First and Second Derivative
% Isolating strong intensity changes (edges).

% --- Sobel (First Derivative) ---
k_sobel_v = [-1 -2 -1; 0 0 0; 1 2 1]; % Vertical edge detector
k_sobel_h = k_sobel_v';                % Horizontal edge detector

% Use conv2 to explicitly perform convolution
Edge_V = conv2(I_norm, k_sobel_v, 'same');
Edge_H = conv2(I_norm, k_sobel_h, 'same');

% Gradient Magnitude (Overall edge strength)
Magnitude = hypot(Edge_V, Edge_H);

% --- Laplacian (Second Derivative) ---
k_laplacian = [0 1 0; 1 -4 1; 0 1 0]; % Basic Laplacian kernel
I_lap_edges = conv2(I_norm, k_laplacian, 'same');


figure; montage({mat2gray(Edge_H), mat2gray(Edge_V), mat2gray(Magnitude), mat2gray(I_lap_edges)}, 'Size', [1 4]);
title('Sobel Horizontal Edges | Sobel Vertical Edges | Total Gradient Magnitude | Laplacian');

%% 5) Boundary Handling Comparison
% How different boundary conditions affect the result (using the large 9x9 mean filter).

I_padded_replicate = imfilter(I_norm, k_mean_9, 'replicate');
I_padded_zero = imfilter(I_norm, k_mean_9, 'circular'); 
I_padded_symmetric = imfilter(I_norm, k_mean_9, 'symmetric'); 

figure; montage({I_padded_replicate, I_padded_zero, I_padded_symmetric}, 'Size', [1 3]);
title('Boundary Handling: Replicate | Circular (Wrap-around) | Symmetric (Mirror)');