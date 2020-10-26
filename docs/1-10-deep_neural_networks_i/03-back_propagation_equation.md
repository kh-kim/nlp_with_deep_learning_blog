---
layout: default
title: Back Propagation Equations
parent: Deep Neural Networks I
nav_order: 1-10-03
---

# 수식: Back-propagation

$$\begin{gathered}
\mathcal{L}(\theta)=\sum_{i=1}^N{\|y_i-\hat{y}_i\|_2^2} \\
\\
\begin{aligned}
\hat{y}_i&=h_{2,i}\cdot{W_3}+b_3 \\
h_{2,i}&=\sigma(h_{1,i}\cdot{W_2}+b_2) \\
h_{1,i}&=\sigma(x_i\cdot{W_1}+b_1)
\end{aligned}
\end{gathered}$$

$$\begin{gathered}
W_1\leftarrow{W_1}-\eta\nabla_{W_1}\mathcal{L}(\theta) \\
W_2\leftarrow{W_2}-\eta\nabla_{W_2}\mathcal{L}(\theta) \\
W_3\leftarrow{W_3}-\eta\nabla_{W_3}\mathcal{L}(\theta)
\end{gathered}$$

$$\begin{gathered}
\nabla_{W_3}\mathcal{L}(\theta)=\nabla_{W_3}\sum_{i=1}^N{
    \Big(y_i-(h_{2,i}\cdot{W_3}+b_3)\Big)^2
 } \\
\nabla_{W_2}\mathcal{L}(\theta)=\nabla_{W_2}\sum_{i=1}^N{
    \Bigg(
        y_i-\Big(
            \sigma(
                h_{1,i}\cdot{W_2}+b_2
            )\cdot{W_3}+b_3
        \Big)
    \Bigg)^2
} \\
\vdots
\end{gathered}$$

$$\begin{aligned}
\frac{\partial{\mathcal{L}}}{\partial{W_3}}&=\frac{\partial{\mathcal{L}}}{\partial{\hat{y}}}\cdot\frac{\partial{\hat{y}}}{\partial{W_3}} \\
\frac{\partial{\mathcal{L}}}{\partial{W_2}}&=\frac{\partial{\mathcal{L}}}{\partial{\hat{y}}}\cdot\frac{\partial{\hat{y}}}{\partial{h_2}}\cdot\frac{\partial{h_2}}{\partial{W_2}} \\
\frac{\partial{\mathcal{L}}}{\partial{W_1}}&=\frac{\partial{\mathcal{L}}}{\partial{\hat{y}}}\cdot\frac{\partial{\hat{y}}}{\partial{h_2}}\cdot\frac{\partial{h_2}}{\partial{h_1}}\cdot\frac{\partial{h_1}}{\partial{W_1}} \\
\end{aligned}$$
