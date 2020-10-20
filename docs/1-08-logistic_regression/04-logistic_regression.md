---
layout: default
title: What is Logistic Regression
parent: Logistic Regression
nav_order: 1-08-04
---

# Logistic Regression

$$\begin{gathered}
\mathcal{D}=\{(x_i,y_i)\}_{i=1}^N, \\
\text{where }x_{1:N}\in\mathbb{R}^{N\times{n}}\text{ and }y_{1:N}\in\mathbb{R}^{N\times{m}}.
\end{gathered}$$

$$\begin{gathered}
\hat{y}_{1:N}=\sigma(x_{1:N}\cdot{W}+b) \\
\\
\mathcal{L}(W,b)=-\frac{1}{N}\sum_{i=1}^N{
    y_i^\top\cdot\log{\hat{y}_i}+(1-y_i)^\top\cdot\log(1-\hat{y}_i)
}
\end{gathered}$$

$$\begin{gathered}
\hat{P}(x_i=\text{True})\approx\hat{y}_i
\end{gathered}$$

$$\begin{gathered}
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmin}}\mathcal{L}(\theta)\text{, where }\theta=\{W,b\}. \\
\\
W\leftarrow{W}-\eta\nabla_{W}\mathcal{L}(W,b) \\
b\leftarrow{b}-\eta\nabla_{b}\mathcal{L}(W,b)
\end{gathered}$$
