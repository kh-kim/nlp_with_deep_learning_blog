---
layout: default
title: BCE Loss
parent: Logistic Regression
nav_order: 1-08-03
---

# BCE Loss

$$\begin{gathered}
0\le{P(\text{x}=\text{True})}\le1 \\
\\
P(\text{x}=\text{True})=1-P(\text{x}=\text{False})
\end{gathered}$$

$$\begin{gathered}
\text{BCE}(y_{1:N},\hat{y}_{1:N})=-\frac{1}{N}\sum_{i=1}^N{
    y_i^\top\cdot\log{\hat{y}_i}+(1-y_i)^\top\cdot\log(1-\hat{y}_i)
}
\end{gathered}$$
