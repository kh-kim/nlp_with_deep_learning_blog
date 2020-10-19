---
layout: default
title: Matric Multiplications
parent: Linear Layer
nav_order: 1-04-01
---

# 행렬 곱

$$\begin{aligned}
x\times{y}&=\begin{bmatrix}
    1 & 2 & 3 \\
    4 & 5 & 6
\end{bmatrix}\times\begin{bmatrix}
    1 & 2 \\
    3 & 4 \\
    5 & 6
\end{bmatrix} \\
&=\begin{bmatrix}
    1\times1+2\times3+3\times5 & 1\times2+2\times4+3\times6 \\
    4\times1+5\times3+6\times5 & 4\times2+5\times4+6\times6
\end{bmatrix} \\
&=\begin{bmatrix}
    1+6+15 & 2+8+18 \\
    4+15+30 & 8+20+36
\end{bmatrix}
=\begin{bmatrix}
    22 & 28 \\
    49 & 64
\end{bmatrix}
\end{aligned}$$

$$\begin{gathered}
x\in\mathbb{R}^{2\times3}\text{, }y\in\mathbb{R}^{3\times2}\text{ and }x\times{y}\in\mathbb{R}^{2\times2}. \\
\downarrow \\
|x|=(2,3)\text{, }|y|=(3,2)\text{ and }|x\times{y}|=(2,2).
\end{gathered}$$
