---
layout: default
title: Weight Decay
parent: Regularizations
nav_order: 1-14-02
---

# Weight Decay

$$\begin{gathered}
\begin{aligned}
\mathcal{\tilde{L}}(\theta)&=\mathcal{L}(\theta)+\alpha\|W\|_2^2 \\
&=\mathcal{L}(\theta)+\alpha{W^\top\cdot{W}},
\end{aligned} \\
\text{where }\theta=\{W,b\}.
\end{gathered}$$
