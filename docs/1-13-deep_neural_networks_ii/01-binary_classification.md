---
layout: default
title: Binary Classifications
parent: Deep Neural Networks II
nav_order: 1-13-1
---

# 이진 분류

$$\begin{gathered}
0\le{P(y=\text{True}|x)}\le1 \\
P(y=\text{True}|x)=1-P(y=\text{False}|x)
\end{gathered}$$

$$\begin{gathered}
\mathcal{D}=\{(x_i,y_i)\}_{i=1}^N, \\
\text{where }x_{1:N}\in\mathbb{R}^{N\times{n}}\text{ and }y_{1:N}\in\mathbb{R}^{N\times{m}}. \\
\\
\hat{y}_i=f_\theta(x_i) \\
\text{BCE}(y_{1:N},\hat{y}_{1:N})=-\frac{1}{N}\sum_{i=1}^N{
    y_i^\top\cdot\log{\hat{y}_i}+(1-y_i)^\top\cdot\log{(1-\hat{y}_i)}
} \\
\\
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmin}}\text{ BCE}(y_{1:N},\hat{y}_{1:N})
\end{gathered}$$
