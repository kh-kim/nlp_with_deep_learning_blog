---
layout: default
title: Momentum & Adaptive LR
parent: Optimizer
nav_order: 1-11-3
---

# Momentum & Adaptive LR

$$\begin{gathered}
\mathcal{L}(\theta_t)=\frac{1}{N}\sum_{i=1}^N{
    \Delta\Big(f(x_i;\theta_t),y_i\Big)
} \\
\\
g_t=\nabla_\theta\mathcal{L}(\theta_t)
\end{gathered}$$

$$\begin{gathered}
\theta_{t+1}=\theta_t-\eta\cdot{g_t}, \\ 
\text{where }\eta\text{ is learning rate}.
\end{gathered}$$

## Momentum

$$\begin{gathered}
\begin{aligned}
\tilde{g}_t&=\gamma\cdot{\tilde{g}_{t-1}}-\eta\cdot{g_t} \\
&=-\eta\cdot\sum_{i=1}^t{
    \gamma^{t-i}\cdot{g_i}
},
\end{aligned} \\
\text{where }\tilde{g}_0=0\text{ and }\gamma\text{ is momentum}. \\
\\
\begin{aligned}
\theta_{t+1}&=\theta_t+\tilde{g}_t \\
&=\theta_t-\eta\cdot\sum_{i=1}^t{
    \gamma^{t-i}\cdot{g_i}
}
\end{aligned}
\end{gathered}$$

## Adaptive LR

### AdaGrad

$$\begin{gathered}
\begin{aligned}
r_t&=r_{t-1}+g_t\odot{g_t} \\
&=\sum_{i=1}^t{
    g_i\odot{g_i}
},
\end{aligned} \\
\text{where }r_0=0\text{ and }\odot\text{ is element-wise multiplication}. \\
\\
\begin{aligned}
\theta_{t+1}&=\theta_t-\frac{\eta}{\sqrt{r_t+\epsilon}}\odot{g_t} \\
&=\theta_t-\eta\cdot\frac{g_t}{\sqrt{\epsilon+\sum_{i=1}^t{
    g_i\odot{g_i}
}}}
\end{aligned}
\end{gathered}$$
