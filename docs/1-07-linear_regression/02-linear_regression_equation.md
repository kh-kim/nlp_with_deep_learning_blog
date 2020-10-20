---
layout: default
title: Linear Regression Equations
parent: Linear Regression
nav_order: 1-07-02
---

# 수식: Linear Regression

$$\begin{gathered}
\mathcal{D}=\{(x_i, y_i)\}_{i=1}^N, \\
\text{where }x_i\in\mathbb{R}^{N\times{n}}\text{ and }y_i\in\mathbb{R}^{N\times{m}}.
\end{gathered}$$

$$\begin{gathered}
x_{1:N}=\begin{bmatrix}
    x_{1,1} & \cdots & x_{1,n} \\
    \vdots & \ddots & \vdots \\
    x_{N,1} & \cdots & x_{N,n}
\end{bmatrix} \\
\\
y_{1:N}=\begin{bmatrix}
    y_{1,1} & \cdots & y_{1,m} \\
    \vdots & \ddots & \vdots \\
    y_{N,1} & \cdots & y_{N,m}
\end{bmatrix}
\end{gathered}$$

$$\begin{gathered}
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmin}}\sum_{i=1}^N{\|y_i-f_\theta(x_i)\|}_2^2, \\
\text{where }\theta=\{W,b\}\text{ and }f_\theta(x)=x\cdot{W}+b.
\end{gathered}$$

$$\begin{gathered}
\hat{y}_{1:N}=x_{1:N}\cdot{W}+b, \\
\text{where }W\in\mathbb{R}^{n\times{m}}\text{ and }b\in\mathbb{R}^m.
\end{gathered}$$

$$\begin{gathered}
\begin{aligned}
\mathcal{L}(\theta)&=\sum_{i=1}^N{\|y_i-\hat{y}_i\|_2^2} \\
&=\sum_{i=1}^N{
    \sum_{j=1}^m{
        (y_{i,j}-\hat{y}_{i,j})^2
    }
} \\
&=\sum_{i=1}^N{
    \sum_{j=1}^m{
        y_{i,j}^2-2y_{i,j}\cdot\hat{y}_{i,j}+\hat{y}_{i,j}^2
    }
},
\end{aligned} \\
\text{where }\hat{y}_{i,j}=\sum_{k=1}^n{
    x_{i,k}\times{W}_{k,j}
}+b_j.
\end{gathered}$$

$$\begin{gathered}
\theta\leftarrow\theta-\eta\nabla_\theta\mathcal{L}(\theta) \\
\downarrow \\
W\leftarrow{W}-\eta\nabla_{W}\mathcal{L}(\theta) \\
b\leftarrow{b}-\eta\nabla_{b}\mathcal{L}(\theta) \\
\downarrow \\
W_{k,j}\leftarrow{W}_{k,j}-\eta\frac{d\mathcal{L}(\theta)}{dW_{k,j}} \\
b_{j}\leftarrow{b}_{j}-\eta\frac{d\mathcal{L}(\theta)}{db_{j}}
\end{gathered}$$
