---
layout: default
title: Mean Square Errors
parent: Loss Function
nav_order: 1-05-01
---

# Loss Function

$$\begin{aligned}
\text{Loss}&=\sum_{i=1}^N{\|y_i-\hat{y}_i\|} \\
&=\sum_{i=1}^N{\|y_i-f(x_i)\|} \\
\end{aligned}$$

$$\begin{gathered}
\mathcal{L}(\theta)=\sum_{i=1}^N{\|y_i-f_\theta(x_i)\|}, \\
\text{where }\theta=\{W,b\}.
\end{gathered}$$

## Mean Square Errors

### L2

$$\begin{gathered}
\begin{aligned}
\|y-\hat{y}\|_2&=\sqrt{(y_1-\hat{y}_1)^2+\cdots+(y_n-\hat{y}_n)^2}, \\
&=\sqrt{\sum_{i=1}^n{(y_i-\hat{y}_i)^2}}
\end{aligned} \\
\text{where }y\in\mathbb{R}^n\text{ and }\hat{y}\in\mathbb{R}^n.
\end{gathered}$$

### RMSE

$$\begin{gathered}
\text{RMSE}(y,\hat{y})=\sqrt{\frac{1}{n}\sum_{i=1}^n{(y_i-\hat{y}_i)^2}}
\end{gathered}$$

### MSE

$$\begin{aligned}
\text{MSE}(y,\hat{y})&=\frac{1}{n}\sum_{i=1}^n{(y_i-\hat{y}_i)^2} \\
&=\frac{1}{n}(\|y-\hat{y}\|_2)^2 \\
&=\frac{1}{n}\|y-\hat{y}\|_2^2 \\
&\propto\|y-\hat{y}\|_2^2
\end{aligned}$$

$$\begin{aligned}
\mathcal{L}_\text{MSE}(\theta)=\frac{1}{n}\sum_{i=1}^N{
    \sum_{j=1}^n{\Big(
            y_{i,j}-f(x_{i,j})
    \Big)^2}
}
\end{aligned}$$
