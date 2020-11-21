---
layout: default
title: Matric Multiplications
parent: Linear Layer
nav_order: 1-04-01
---

# 행렬 곱

## 행렬 곱

$$\begin{aligned}
AB&=\begin{bmatrix}
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
A\in\mathbb{R}^{2\times3}\text{, }B\in\mathbb{R}^{3\times2}\text{ and }AB\in\mathbb{R}^{2\times2}. \\
\downarrow \\
|A|=(2,3)\text{, }|B|=(3,2)\text{ and }|AB|=(2,2).
\end{gathered}$$

## 벡터 행렬 곱

$$\begin{aligned}
v^\intercal{M}&=\begin{bmatrix}
    1 & 2 & 3
\end{bmatrix}\times\begin{bmatrix}
    1 & 2 \\
    3 & 4 \\
    5 & 6
\end{bmatrix} \\
&=\begin{bmatrix}
    1\times1+2\times3+3\times5 & 1\times2+2\times4+3\times6
\end{bmatrix} \\
&=\begin{bmatrix}
    1+6+15 & 2+8+18
\end{bmatrix}=\begin{bmatrix}
    22 & 28
\end{bmatrix}
\end{aligned}$$

$$\begin{gathered}
v\in\mathbb{R}^3\text{, }v^\intercal\in\mathbb{R}^{1\times3}\text{ and }M\in\mathbb{R}^{3\times2}. \\
\downarrow \\
|v^\intercal|=(1,3)\text{, }|M|=(3,2)\text{ and }|v^\intercal{M}|=(1,2).
\end{gathered}$$

$$\begin{aligned}
Mv&=\begin{bmatrix}
    1 & 2 \\
    3 & 4 \\
    5 & 6
\end{bmatrix}\times\begin{bmatrix}
    1 \\
    2
\end{bmatrix} \\
&=\begin{bmatrix}
    1\times1+2\times2 \\
    3\times1+4\times2 \\
    5\times1+6\times2
\end{bmatrix}=\begin{bmatrix}
    1+4 \\
    3+8 \\
    5+12
\end{bmatrix}=\begin{bmatrix}
    5 \\
    11 \\
    17
\end{bmatrix}
\end{aligned}$$

$$\begin{gathered}
|M|=(3,2)\text{, }|v|=(2,)=(2,1)\text{ and }|Mv|=(3,1).
\end{gathered}$$