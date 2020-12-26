---
layout: default
title: Adam Optimizer
parent: Optimizer
nav_order: 1-11-4
---

# Adam Optimizer

$$\begin{gathered}
\rho_1=0.9\text{ and }\rho_2=0.999. \\
\\
\begin{aligned}
s_t&=\rho_1\cdot{s_{t-1}}+(1-\rho_1)\cdot{g_t},\text{ where }s_0=0. \\
&=(1-\rho_1)\cdot\sum_{i=1}^t{
    \rho_1^{t-i}\cdot{g_i}
}
\end{aligned} \\
\begin{aligned}
r_t&=\rho_2\cdot{r_{t-1}}+(1-\rho_2)\cdot{(g_t\odot{g_t})},\text{ where }r_0=0. \\
&=(1-\rho_2)\cdot\sum_{i=1}^t{
    \rho_2^{t-i}\cdot{(g_i\odot{g_i})}
}
\end{aligned} \\
\\
\hat{s}_t=\frac{s_t}{1-\rho_1^t} \\
\hat{r}_t=\frac{r_t}{1-\rho_2^t} \\
\\
\begin{aligned}
\theta_{t+1}&=\theta_t-\eta\cdot\frac{\hat{s}_t}{\sqrt{\hat{r}_t+\epsilon}} \\
&\approx\theta_t-\eta\cdot\frac{\hat{s}_t}{\sqrt{\hat{r}_t}} \\
&=\theta_t-\eta\cdot\frac{\sqrt{1-\rho_2^t}}{1-\rho_1^t}
\cdot\frac{1-\rho_1}{1-\rho_2}
\cdot\frac{\sum_{i=1}^t{
    \rho_1^{t-i}\cdot{g_i}
}}{\sum_{i=1}^t{
    \rho_2^{t-i}\cdot{(g_i\odot{g_i})}
}}
\end{aligned}
\end{gathered}$$
