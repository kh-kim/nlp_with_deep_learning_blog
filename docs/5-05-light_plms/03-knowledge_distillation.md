---
layout: default
title: Knowledge Distillation
parent: Light PLMs
nav_order: 5-05-03
---

# Knowledge Distillation

## Equation

$$\begin{gathered}
\mathcal{D}=\{(x_i,y_i)\}_{i=1}^N \\
\\
\hat{\theta}_T,\hat{W}_T=\underset{\theta_T\in\Theta,W_T\in\mathcal{W}}{\text{argmax}}{
    \sum_{i=1}^N{
        \log{P(y_i|x_i;\theta_T,W_T)}
    }
}
\end{gathered}$$

$$\begin{aligned}
P(\cdot|x_i;\theta_T,W_T,\tau)&=\text{softmax}\Big(
    \frac{W_T\cdot{f(x_i;\theta_T)}}{\tau}
\Big) \\
&=\text{softmax}\Big(
    \frac{W_T\cdot{h_i}}{\tau}
\Big).
\end{aligned}$$

$$\begin{aligned}
P(\cdot|x_i;\theta_S,W_S,\tau)&=\text{softmax}\Big(
    \frac{W_S\cdot{f(x_i;\theta_S)}}{\tau}
\Big) \\
\end{aligned}$$

$$\begin{aligned}
\mathcal{L}_\text{KD}(\theta_S,W_S)&=-\sum_{i=1}^N{
    \sum_{c\in\mathcal{C}}{
        P(\text{y}=c|x_i;\hat{\theta}_T,\hat{W}_T,\tau)\log{
            P(\text{y}=c|x_i;\theta_S,W_S,\tau)
        }
    }
} \\
&\approx-\mathbb{E}_{\text{x}\sim{P(\text{x})}}\Big[
    \mathbb{E}_{\text{y}\sim{P(\cdot|\text{x};\hat{\theta}_T,\hat{W}_T,\tau)}}\big[
        \log{P(\text{y}|\text{x};\theta_S,W_S,\tau)}
    \big]
\Big]
\end{aligned}$$

$$\begin{gathered}
\mathcal{L}_\text{CE}(\theta_S,W_S)=-\sum_{i=1}^N{
    \log{P(y_i|x_i;\theta_S,W_S)}
}
\end{gathered}$$

$$\begin{gathered}
\mathcal{L}(\theta_S,W_S)=(1-\alpha)\mathcal{L}_\text{CE}(\theta_S,W_S)+\alpha\mathcal{L}_\text{KD}(\theta_S,W_S) \\
\\
\hat{\theta}_S,\hat{W}_S=\underset{\theta_S\in\Theta,W_S\in\mathcal{W}}{\text{argmin}}\mathcal{L}(\theta_S,W_S)
\end{gathered}$$