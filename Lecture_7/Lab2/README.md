# Lecture7_Lab2
![images](https://github.com/Khan548-codes/Lecture7_Lab2/blob/main/images/sss1.png)
![images](https://github.com/Khan548-codes/Lecture7_Lab2/blob/main/images/sss2.png)
![images](https://github.com/Khan548-codes/Lecture7_Lab2/blob/main/images/sss3.png)
![images](https://github.com/Khan548-codes/Lecture7_Lab2/blob/main/images/sss4.png)
![images](https://github.com/Khan548-codes/Lecture7_Lab2/blob/main/images/sss5.png)

0) Load Image 🏞️
I started by loading the image and converting it to grayscale. This simplified the subsequent convolution experiments, as working with intensity changes rather than color channels is sufficient for analyzing filter responses.

1) Delta Image & Impulse Response 🔬
2) By convolving a single-pixel impulse (delta) with the filter, I visualized the kernel's impulse response. This output directly shows how the filter distributes intensity, providing a clear preview of the blurring effect before application to a full image.

2) Low-Pass Filtering: Box vs. Gaussian 🌫️
I applied both box (mean) and Gaussian filters to achieve blurring (low-pass filtering). While the larger box filter blurred more, the Gaussian produced a significantly smoother result without blocky artifacts. Crucially, the separable nature of the Gaussian filter was noted to drastically reduce computation time by using two 1D passes instead of a single 2D operation.

3) Unsharp Masking (Sharpening) 🔪
Sharpening was achieved using the unsharp masking technique. This involved subtracting a blurred version from the original to create a high-frequency mask (edges), which was then added back to the original image to enhance detail and make edges "pop."

4) Edge Detection: Sobel & Laplacian 🚧
I used Sobel filters to detect edges in the x and y directions, which were then combined into the overall gradient magnitude. The Laplacian was also applied to detect edges independently of their orientation, demonstrating two fundamental methods for extracting boundaries.

5) Correlation vs. Convolution 🔄
Comparing the output of conv2 and imfilter showed that the difference was practically zero for this symmetric kernel. Conceptually, however, the main distinction is that convolution requires the filter kernel to be flipped 180 degree, while correlation does not.

6) Boundary Handling 🩹
Testing different boundary conditions revealed how they manage missing pixels at the image edges. The symmetric (mirror) mode generally produced the most natural result by effectively mirroring the edge content, while replicate and circular modes could introduce visible artifacts at the borders and corners.

Key Takeaways
The Gaussian filter is superior to large box filters because its smooth frequency response avoids harsh artifacts and allows for efficient computation via separability. Furthermore, proper boundary handling (like using the symmetric mode) is essential to prevent visible edge distortions after applying the convolution operation.
