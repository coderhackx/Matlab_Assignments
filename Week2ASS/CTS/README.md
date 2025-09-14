# week2-signals-matlab

```
% Define the time vector for continuous signals
t = -5:0.01:5; % Time from -5 to 5 with a step of 0.01

% Unit Impulse
impulse = zeros(size(t)); % Initialize impulse signal
impulse(t == 0) = 1; % Set value at t=0 to 1
figure; % Create a new figure
plot(t, impulse, 'LineWidth', 2); % Plot impulse signal
title('Unit Impulse Signal'); % Title
xlabel('Time (s)'); % X-axis label
ylabel('Amplitude'); % Y-axis label
grid on; % Enable grid

% Unit Step
step = t >= 0; % Step function is 1 for t >= 0
figure; % Create a new figure
plot(t, step, 'LineWidth', 2); % Plot step signal
title('Unit Step Signal'); % Title
xlabel('Time (s)'); % X-axis label
ylabel('Amplitude'); % Y-axis label
grid on; % Enable grid

% Unit Ramp
ramp = t; % Ramp function is equal to t
ramp(t < 0) = 0; % Set values for t < 0 to 0
figure; % Create a new figure
plot(t, ramp, 'LineWidth', 2); % Plot ramp signal
title('Unit Ramp Signal'); % Title
xlabel('Time (s)'); % X-axis label
ylabel('Amplitude'); % Y-axis label
grid on; % Enable grid

% Exponential Signal
exp_signal = exp(t); % Exponential function e^t
figure; % Create a new figure
plot(t, exp_signal, 'LineWidth', 2); % Plot exponential signal
title('Exponential Signal'); % Title
xlabel('Time (s)'); % X-axis label
ylabel('Amplitude'); % Y-axis label
grid on; % Enable grid

% Signum Signal
signum = sign(t); % Signum function
figure; % Create a new figure
plot(t, signum, 'LineWidth', 2); % Plot signum signal
title('Signum Signal'); % Title
xlabel('Time (s)'); % X-axis label
ylabel('Amplitude'); % Y-axis label
grid on; % Enable grid

% Sinc Signal
sinc_signal = sinc(t); % Sinc function (normalized)
figure; % Create a new figure
plot(t, sinc_signal, 'LineWidth', 2); % Plot sinc signal
title('Sinc Signal'); % Title
xlabel('Time (s)'); % X-axis label
ylabel('Amplitude'); % Y-axis label
grid on; % Enable grid
% Plot all signals in a single figure for comparison
figure;
hold on; % Hold on to plot multiple signals
plot(t, impulse, 'LineWidth', 2, 'DisplayName', 'Impulse');
plot(t, step, 'LineWidth', 2, 'DisplayName', 'Step');
plot(t, ramp, 'LineWidth', 2, 'DisplayName', 'Ramp');
plot(t, exp_signal, 'LineWidth', 2, 'DisplayName', 'Exponential');
plot(t, signum, 'LineWidth', 2, 'DisplayName', 'Signum');
plot(t, sinc_signal, 'LineWidth', 2, 'DisplayName', 'Sinc');
hold off; % Release the hold
title('Comparison of Continuous Signals'); % Title for the combined plot
xlabel('Time (s)'); % X-axis label
ylabel('Amplitude'); % Y-axis label
legend show; % Show legend for clarity
grid on; % Enable grid
```

# images

![image](/images/1.png)
![image](/images/2.png)
![image](/images/3.png)
![image](/images/4.png)
![image](/images/5.png)
![image](/images/6.png)
![image](/images/7.png)

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

