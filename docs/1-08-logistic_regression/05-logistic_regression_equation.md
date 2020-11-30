---
layout: default
title: Logistic Regression Equations
parent: Logistic Regression
nav_order: 1-08-05
---

# 수식: Logistic Regression

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
\hat{P}(\text{y}=\text{True}|x_i)\approx\hat{y}_i
\end{gathered}$$

$$\begin{gathered}
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmin }}\mathcal{L}(\theta)\text{, where }\theta=\{W,b\}. \\
\\
W\leftarrow{W}-\eta\nabla_{W}\mathcal{L}(W,b) \\
b\leftarrow{b}-\eta\nabla_{b}\mathcal{L}(W,b)
\end{gathered}$$

$$\begin{gathered}
\begin{aligned}
\text{BCELoss}(y_{1:N},\hat{y}_{1:N})&=-\frac{1}{N}\sum_{i=1}^N{
    \sum_{j=1}^m{
        y_{i,j}\times\log{\hat{y}_{i,j}}+(1-y_{i,j})\times\log{(1-\hat{y}_{i,j})}
    }
} \\
&=-\frac{1}{N}\sum_{i=1}^N{
    \sum_{j=1}^m{
        P(\text{y}_j=\text{True}|x_i)\times\log{P(\text{y}_j=\text{True}|x_i;\theta)}+P(\text{y}_j=\text{False}|x_i)\times\log{P(\text{y}_j=\text{False}|x_i;\theta)}
    }
},
\end{aligned} \\
\text{where }y_{i,j}=P(\text{y}_j=\text{True}|x_i)\text{ and }1-y_{i,j}=P(\text{y}_j=\text{False}|x_i).
\end{gathered}$$
