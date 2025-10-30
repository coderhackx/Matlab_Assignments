# Lecture7_Lab1

![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Lecture_7/Lab1/Images/ss1.png)
![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Lecture_7/Lab1/Images/ss2.png)
![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Lecture_7/Lab1/Images/ss3.png)
![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Lecture_7/Lab1/Images/ss4.png)
![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Lecture_7/Lab1/Images/ss5.png)
![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Lecture_7/Lab1/Images/ss6%20(2).png)
![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Lecture_7/Lab1/Images/ss1.png)
![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Lecture_7/Lab1/Images/ss8%20(2).png)

0) Setup: Focusing on Luminance 💡
I began by converting the loaded image to grayscale to focus solely on luminance as the 2D signal for processing. This confirmed the image was 8-bit, giving me 256 intensity levels to work with.

1) Quantization and Dynamic Range 📉
2) Reducing the bit-depth from 8-bit to ~4-bit immediately caused banding and loss of smooth gradients. This showed that low quantization levels severely restrict the dynamic range, leading to a "posterized" look.

2) Histogram and Contrast Stretching 📈
The original image's pixel values were clustered, but linear contrast stretching successfully spread them across the full 0 to 255 range. This maximized the information by improving the contrast and bringing out details hidden in both shadows and highlights.

3) Gamma Correction 🌈
4) Applying gamma correction allowed for nonlinear adjustments; gamma< 1 brightened the image, while gamma > 1 darkened it. This technique selectively adjusts the image's mid-tones, offering better control over perceived brightness than simple linear stretching.

4) Sampling and Aliasing 📐
Aggressively downsampling and then scaling the image back up resulted in a blocky, distorted image. This aliasing confirms that when the sampling rate is too low, fine details are lost and reappear as incorrect patterns, violating the necessary Nyquist condition.
