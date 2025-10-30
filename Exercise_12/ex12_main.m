% --- Parameters for the Ideal Low-Pass Filter ---
wc = 1;          % Cutoff frequency in radians
N_fft = 1024;    % Number of FFT points for frequency response

% Normalized frequency axis for plotting the response
w = linspace(-pi, pi, N_fft); 
freq_axis = w/pi; % Normalized frequency omega/pi

M_values = [20, 64]; % Filter orders to test

for k = 1:length(M_values)
    M = M_values(k);
    n = 0:M;     % Sample index
    
    % The argument for the sin function and the denominator
    denom_arg = n - M/2;
    
    % Implement the ideal FIR Low-Pass Filter formula
    h_LP = sin(wc * denom_arg) ./ (pi * denom_arg);
    
    % Handle the special case n = M/2 (divide-by-zero)
    zero_index = (denom_arg == 0);
    h_LP(zero_index) = wc / pi;
    
    % --- Compute Frequency Response ---
    
    % The rectangular window is implicitly applied by taking the FFT
    % of the finite-length impulse response h_LP.
    H_LP = fft(h_LP, N_fft);
    
    % Shift and take the magnitude for the plot
    H_LP_magnitude = abs(fftshift(H_LP));
    
    % --- Plotting (Generating the 2x1 Figure for each M) ---
    figure;
    
    % Subplot 1: Impulse Response
    subplot(2, 1, 1);
    stem(n, h_LP, 'filled'); grid on;
    % Adjust the title to match the image exactly (assuming 'windowed' refers to the effect of the finite length)
    title(sprintf('Impulse response of the %dth order filter', M)); 
    xlabel('n'); 
    % Set y-axis limits similar to the provided image
    ylim([-0.05, 0.35]); 

    % Subplot 2: Frequency Response Magnitude
    subplot(2, 1, 2);
    plot(freq_axis, H_LP_magnitude, 'LineWidth', 1.5); grid on;
    % Adjust the title
    title(sprintf('Frequency response of the windowed %dth order filter', M));
    xlabel('$\omega/\pi$', 'Interpreter', 'latex'); 
    ylabel('Magnitude');
    % Set y-axis limits and x-axis limits similar to the provided image
    xlim([-1, 1]);
    ylim([-0.05, 1.2]); 
end