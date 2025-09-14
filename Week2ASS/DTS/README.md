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

# 📘 Discrete-Time Signals

This repository demonstrates basic **discrete-time signals** using MATLAB. Each signal is plotted individually and also compared in a single figure.

## 📌 Description of Discrete-Time Signals

- **Unit Impulse (δ[n])** – A signal that is `1` at *n = 0* and `0` elsewhere.  
- **Unit Step (u[n])** – A signal that is `0` for *n < 0* and `1` for *n ≥ 0*.  
- **Unit Ramp (r[n])** – A linearly increasing signal, defined as `r[n] = n` for *n ≥ 0*, and `0` for *n < 0*.  
- **Exponential (e^(αn))** – A signal that grows or decays exponentially depending on the value of α.  
- **Signum (sgn[n])** – Defined as `–1` for *n < 0*, `0` at *n = 0*, and `+1` for *n > 0*.  
- **Sinc (sinc[n])** – Defined as `sinc(n) = sin(πn)/(πn)` with `sinc(0) = 1`. Often used in digital signal processing.

## 📊 Visualizations

The MATLAB script plots:

1. Each signal individually using **stem plots**.
2. A combined figure showing all signals together for comparison.

---

## 📌 Instructions to Run the Code
1. Copy the MATLAB script into a new file (e.g., `ASS2DTS.m`).  
2. Save the file in your MATLAB working directory.  
3. Run the script by typing:
   ```matlab
   ASS2DTS

