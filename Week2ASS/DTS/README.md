# week2-signals-matlab

```
% Define the range of n values
n = -10:10;

% Unit Impulse Signal
impulse = (n == 0); % Impulse is 1 at n=0, 0 otherwise
figure;
stem(n, impulse, 'filled');
title('Unit Impulse Signal');
xlabel('n');
ylabel('Amplitude');
grid on;

% Unit Step Signal
step = (n >= 0); % Step is 1 for n >= 0, 0 otherwise
figure;
stem(n, step, 'filled');
title('Unit Step Signal');
xlabel('n');
ylabel('Amplitude');
grid on;

% Unit Ramp Signal
ramp = n .* (n >= 0); % Ramp is n for n >= 0, 0 otherwise
figure;
stem(n, ramp, 'filled');
title('Unit Ramp Signal');
xlabel('n');
ylabel('Amplitude');
grid on;

% Exponential Signal
exponential = exp(0.1 * n); % Exponential signal e^(0.1*n)
figure;
stem(n, exponential, 'filled');
title('Exponential Signal');
xlabel('n');
ylabel('Amplitude');
grid on;

% Signum Function
signum = sign(n); % Signum function: -1 for n<0, 0 for n=0, 1 for n>0
figure;
stem(n, signum, 'filled');
title('Signum Function');
xlabel('n');
ylabel('Amplitude');
grid on;

% Sinc Function
sinc_function = sinc(n); % Sinc function: sinc(x) = sin(pi*x)/(pi*x)
figure;
stem(n, sinc_function, 'filled');
title('Sinc Function');
xlabel('n');
ylabel('Amplitude');
grid on;
% Plotting all signals in a single figure for comparison
figure;
hold on;
stem(n, impulse, 'filled', 'DisplayName', 'Impulse');
stem(n, step, 'filled', 'DisplayName', 'Step');
stem(n, ramp, 'filled', 'DisplayName', 'Ramp');
stem(n, exponential, 'filled', 'DisplayName', 'Exponential');
stem(n, signum, 'filled', 'DisplayName', 'Signum');
stem(n, sinc_function, 'filled', 'DisplayName', 'Sinc');
hold off;
title('Comparison of Signals');
xlabel('n');
ylabel('Amplitude');
legend show;
grid on;

```

# images

![image](/Images/dts1.png)
![image](/Images/dts2.png)
![image](/Images/dts3.png)
![image](/Images/dts4.png)
![image](/Images/dts5.png)
![image](/Images/dts6.png)
![image](/Images/dts7.png)

# Short description
# Signal Generation in MATLAB

## 📌 Short Description of the Signals
- **Impulse (δ(t))** – Instantaneous pulse, 1 at *t = 0*, 0 elsewhere.  
- **Step (u(t))** – 0 for *t < 0*, 1 for *t ≥ 0*.  
- **Ramp (r(t))** – Linearly increasing for *t ≥ 0*.  
- **Exponential (e^t)** – Exponentially increasing signal.  
- **Signum (sgn(t))** – –1 for *t < 0*, 0 at *t = 0*, +1 for *t > 0*.  
- **Sinc (sinc(t))** – Symmetric function used in Fourier analysis.  

---

## 📌 Instructions to Run the Code
1. Copy the MATLAB script into a new file (e.g., `ASS2.m`).  
2. Save the file in your MATLAB working directory.  
3. Run the script by typing:
   ```matlab
   ASS2

