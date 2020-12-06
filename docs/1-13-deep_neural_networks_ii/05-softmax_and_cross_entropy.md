---
layout: default
title: Softmax and Cross Entropy
parent: Deep Neural Networks II
nav_order: 1-13-5
---

# Softmax & Cross Entropy

## Softmax

$$\begin{gathered}
\text{softmax}_i(x)=\frac{e^{x_i}}{\sum_{j=1}^n{e^{x_j}}} \\
\text{where }x\in\mathbb{R}^n.
\end{gathered}$$

$$\begin{gathered}
\text{softmax}(x)=\Big[\text{softmax}_1(x);\cdots;\text{softmax}_n(x)\Big]
\end{gathered}$$

$$\begin{gathered}
P(\text{y}|x)\approx\hat{y}=\text{softmax}(h_\ell) \\
\text{where }h_i=f_i(h_{i-1})\text{ and }h_0=x.
\end{gathered}$$

## Cross Entropy Loss

$$\begin{gathered}
\begin{aligned}
\text{CE}(y_{1:N},\hat{y}_{1:N})&=-\frac{1}{N}\sum_{i=1}^N{
    y_i^\top\cdot\log{\hat{y}_i}
} \\
&=-\frac{1}{N}\sum_{i=1}^N{
    \sum_{j=1}^m{
        y_{i,j}\times\log{\hat{y}_{i,j}}
    }
} \\
&=-\frac{1}{N}\sum_{i=1}^N{
    \log{P_\theta(y_i|x_i)}
}
\end{aligned} \\
\text{where }y_{1:N}\in\mathbb{R}^{N\times{m}}\text{ and }\hat{y}_{1:N}\in\mathbb{R}^{N\times{m}}.
\end{gathered}$$

## Negative Log-Likelihood Loss and Log-Softmax

$$\begin{gathered}
\text{log-softmax}_i(x)&=\log{\frac{e^{x_i}}{\sum_{j=1}^n{e^{x_j}}}}
\end{gathered}$$

$$\begin{gathered}
\begin{aligned}
\text{NLL}(y_{1:N},\hat{y}_{1:N})&=-\frac{1}{N}\sum_{i=1}^N{
    \log{P_\theta(y_i|x_i)}
} \\
&=-\frac{1}{N}\sum_{i=1}^N{
    y_i^\top\cdot\hat{y}_i
}, \\
\end{aligned} \\
\text{where }\hat{y}_i=\log{P_\theta(y_i|x_i)}\text{ from log-softmax}.
\end{gathered}$$