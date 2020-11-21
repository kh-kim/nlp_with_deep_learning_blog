---
layout: default
title: What is Gradient Descent
parent: Gradient Descent
nav_order: 1-06-01
---

# Gradient Descent

<!-- $$\begin{gathered}
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmax}}\sum_{i=1}^N{\|y_i-f_\theta(x_i)\|}
\end{gathered}$$ -->

$$\begin{gathered}
\mathcal{D}=\{(x_i, y_i)\}_{i=1}^N \\
\\
\mathcal{L}(\theta)=\sum_{i=1}^N\|y_i-f_\theta(x_i)\|_2^2, \\
\text{where }\theta=\{W,b\}\text{, if }f(x)=x\cdot{W}+b.
\end{gathered}$$

$$\begin{gathered}
x\leftarrow{x}-\eta\frac{d{y}}{d{x}}, \\
\text{where }y=f(x).
\end{gathered}$$

$$\begin{gathered}
\theta\leftarrow\theta-\eta\frac{\partial\mathcal{L}(\theta)}{\partial\theta} \\
\text{or} \\
\theta\leftarrow\theta-\eta\nabla_\theta\mathcal{L}(\theta).
\end{gathered}$$

$$\begin{gathered}
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmin}}\mathcal{L}(\theta)
\end{gathered}$$

$$\begin{aligned}
W&\leftarrow{W}-\eta\frac{\partial\mathcal{L}(\theta)}{\partial{W}}, \\
b&\leftarrow{b}-\eta\frac{\partial\mathcal{L}(\theta)}{\partial{b}}.
\end{aligned}$$

$$\begin{gathered}
y=f(x)=x\cdot{W}+b, \\
\text{where }W\in\mathbb{R}^{n\times{m}}\text{ and }b\in\mathbb{R}^m.
\end{gathered}$$
