# Exercise 10 – 5-point & 9-point Moving-Average Filters (MAF)

This exercise explores the design and analysis of **5-point** and **9-point Moving Average Filters (MAF)** in MATLAB. The focus is on computing their **frequency responses** and visualizing the corresponding **pole–zero plots**.  

---

## Filter Coefficients

- **5-point MAF:**  
  `b1 = [1 1 1 1 1];  a1 = 1;`

- **9-point MAF:**  
  `b2 = [1 1 1 1 1 1 1 1 1];  a2 = 1;`

---

## Procedure

1. Specify the numerator (`b`) and denominator (`a`) filter coefficients.  
2. Apply the `freqz` function to compute the **magnitude and phase response**.  
3. Convert the transfer function into **zero–pole–gain form** using:  
   ```matlab
   [z, p, k] = tf2zpk(b, a);

   ```
#Plot
![image](https://github.com/coderhackx/Matlab_Assignments/blob/main/Images/ex10pic.png)
