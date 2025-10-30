# Lab-7_Lab-3-Frequency-Domain-Filtering-with-fft2
1) Magnitude Spectrum (log-scale)
We take the image, apply the 2D Fourier Transform (fft2), and then use (fft shift) to move the low-frequency energy (DC component) from the corner to the center. Displaying the logarithm of the magnitude confirms that most of the image's power (smooth areas) is concentrated in the middle, while edges and details (high frequencies) are on the outside.

2) Ideal & Gaussian Low-pass in Frequency
This section creates the frequency filters. The Ideal Low-Pass is a sharp, perfect circle that abruptly cuts off high frequencies. The Gaussian Low-Pass is a much smoother filter that gradually tapers off high frequencies using a bell curve, which is key to avoiding artifacts.

3) Apply LP Filters in Frequency Domain
This is where the magic happens! We apply the filters by multiplying them with the image's centered spectrum (Fshift), based on the Convolution Theorem. After multiplying, we convert the result back to an image using (ifft2).The Ideal LP result shows noticeable ringing artifacts (ripples near edges) due to its sharp cutoff.The Gaussian LP result is smooth and blurry, as expected, with no ringing, thanks to its gentle frequency transition.

4) High-pass via Complement
To create a High-Pass filter, we simply take the complement of the Low-Pass: 1-H_gauss_L. This process preserves the high frequencies, effectively extracting the edges and fine details from the image while blurring out the smooth, low-frequency regions.

5) Compare Spatial vs Frequency-domain Gaussian LP
This step validates the theory. We compare the result of using the imfilter function (a spatial-domain convolution) directly with a Gaussian kernel against our frequency-domain multiplication (G_gauss). As predicted by the Convolution Theorem, the two results are almost visually identical, proving that multiplication in the frequency domain is equivalent to convolution in the spatial domain.

6) Reflections
Why does ideal LP cause ringing (Gibbs phenomenon)?It's caused by the filter's abrupt, hard cutoff in the frequency domain. This sudden truncation introduces high-frequency oscillations into the spatial domain image, which appear as ripples near sharp edges.What does fftshift do visually?It moves the image's DC component (zero frequency) from the top-left corner of the spectrum to the center of the display, making the spectrum symmetrical and much easier for a human to interpret.When is frequency-domain filtering computationally preferable?It's faster than spatial convolution when dealing with large images or when using a large spatial filter kernel. The FFT-based approach scales much more efficiently for these cases.

![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Lecture_7/Lab3/images/p1.png)
![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Lecture_7/Lab3/images/p2.png)
![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Lecture_7/Lab3/images/p3.png)
![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Lecture_7/Lab3/images/p4.png)
