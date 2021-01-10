---
layout: default
title: Gradient Vanishing Problem
parent: Deep Neural Networks I
nav_order: 1-09-04
---

# Gradient Vanishing

$$\begin{gathered}
\mathcal{L}(\theta)=\sum_{i=1}^N{\|y_i-\hat{y}_i\|_2^2} \\
\\
\begin{aligned}
\hat{y}_i&=h_{2,i}\cdot{W_3}+b_3 \\
h_{2,i}&=\sigma(\tilde{h}_{2,i}) \\
\tilde{h}_{2,i}&=h_{1,i}\cdot{W_2}+b_2 \\
h_{1,i}&=\sigma(\tilde{h}_{1,i}) \\
\tilde{h}_{1,i}&=x_i^\intercal\cdot{W_1}+b_1
\end{aligned}
\end{gathered}$$

$$\begin{gathered}
\begin{aligned}
\frac{\partial{\mathcal{L}}}{\partial{W_1}}&=\frac{\partial{\mathcal{L}}}{\partial{\hat{y}}}\cdot\frac{\partial{\hat{y}}}{\partial{h_2}}\cdot\frac{\partial{h_2}}{\partial{h_1}}\cdot\frac{\partial{h_1}}{\partial{W_1}} \\
&=\frac{\partial{\mathcal{L}}}{\partial{\hat{y}}}\cdot\frac{\partial{\hat{y}}}{\partial{h_2}}\cdot\frac{\partial{h_2}}{\partial{\tilde{h}_2}}\cdot\frac{\partial{\tilde{h}_2}}{\partial{h_1}}\cdot\frac{\partial{h_1}}{\partial{\tilde{h}_1}}\cdot\frac{\partial{\tilde{h}_1}}{\partial{W_1}}
\end{aligned} \\
\text{where }\frac{\partial{h_\ell}}{\partial{\tilde{h}_\ell}}=\frac{\partial{\sigma}}{\partial{\tilde{h}_\ell}}<1.
\end{gathered}$$
