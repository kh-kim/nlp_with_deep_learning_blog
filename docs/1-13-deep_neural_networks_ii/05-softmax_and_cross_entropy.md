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
    \sum_{j=1}^m{
        y_{i,j}\times\log{\hat{y}_{i,j}}
    }
} \\
&=-\frac{1}{N}\sum_{i=1}^N{
    y_i^\top\cdot\log{\hat{y}_i}
},
\end{aligned} \\
\text{where }y_{1:N}\in\mathbb{R}^{N\times{m}}\text{ and }\hat{y}_{1:N}\in\mathbb{R}^{N\times{m}}.
\end{gathered}$$
