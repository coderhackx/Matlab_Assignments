# exercise12_fir_lowpass-
Key Learnings from FIR Filter Order Comparison
The most significant lesson is the trade-off between filter order and performance/cost.

1. Transition Width and Selectivity
The primary effect of increasing the filter order (M) is seen in the transition band of the frequency response:

Observation: The M=64 filter has a significantly narrower and steeper transition from the passband to the stopband compared to the M=20 filter.

Explanation:
A higher order means the filter uses more coefficients (taps), allowing the finite impulse response to better approximate the ideal, infinite impulse response. In the frequency domain, this translates directly to improved frequency selectivity and a much sharper cutoff. The M=64 filter is therefore superior at isolating frequencies near the cutoff.

2. Passband and Stopband Ripple (Gibbs Phenomenon)
While performance improves, a fundamental flaw of this design method remains:

Observation:
The height (amplitude) of the oscillations, or ripple, in both the passband (around 1.0) and the stopband (near 0) is virtually the same for both M=20 and M=64.

Explanation: This ripple is the Gibbs phenomenon, caused by the abrupt truncation of the ideal impulse response by the Rectangular Window. The amplitude of this ripple is fixed by the window type and is independent of the filter order $M$. We learn that increasing $M$ only makes the ripples denser, but it will not make the response smoother. To reduce the ripple amplitude, a different, smoother window function (like Hamming or Hanning) must be used.

3. Computational CostLearning Point:
 The M=64 filter has 65 coefficients (taps), while the M=20 filter has 21. Implementing the M=64 filter requires more than three times the computational effort (more multiplications and additions per output sample). This demonstrates the practical engineering constraint: better filter performance (steeper roll-off) comes directly at the cost of higher computational complexity and greater processing delay.

 ![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Exercise_12/images/ss1.png)
 ![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Exercise_12/images/ss2.png)
 ![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Exercise_12/images/ss3.png)
 ![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Exercise_12/images/ss4.png)
 ![images](https://github.com/coderhackx/Matlab_Assignments/blob/main/Exercise_12/images/ss5.png)
