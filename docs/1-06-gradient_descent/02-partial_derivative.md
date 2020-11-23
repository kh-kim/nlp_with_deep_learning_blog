---
layout: default
title: Partial Derivative
parent: Gradient Descent
nav_order: 1-06-02
---

# Partial Derivative

## 편미분

$$\begin{gathered}
\frac{\partial{f}}{\partial{x}}=\lim_{h\rightarrow0}\frac{f(x+h,y)-f(x,y)}{(x+h)-x}
\end{gathered}$$

## 함수의 입출력 형태

### 벡터를 입력으로 받는 함수

$$\begin{gathered}
y=f(\begin{bmatrix}
    x_1 \\
    \vdots \\
    x_n
\end{bmatrix})=f(x), \\
\text{where }x\in\mathbb{R}^n.
\end{gathered}$$

### 행렬을 입력으로 받는 함수

$$\begin{gathered}
y=f(\begin{bmatrix}
    x_{1,1} & \cdots & x_{1,m} \\
    \vdots & \ddots & \vdots \\
    x_{n,1} & \cdots & x_{n,m}
\end{bmatrix})=f(X), \\
\text{where }X\in\mathbb{R}^{n\times{m}}.
\end{gathered}$$

### 출력이 벡터 또는 행렬인 함수

$$\begin{gathered}
y=\begin{bmatrix}
    y_1 \\
    \vdots \\
    y_n
\end{bmatrix}=f(x), \\
\text{where }y\in\mathbb{R}^n.
\end{gathered}$$

$$\begin{gathered}
Y=\begin{bmatrix}
    y_{1,1} & \cdots & y_{1,m} \\
    \vdots & \ddots & \vdots \\
    y_{n,1} & \cdots & y_{n,m}
\end{bmatrix}=f(x), \\
\text{where }Y\in\mathbb{R}^{n\times{m}}.
\end{gathered}$$

## 행렬의 미분

### 스칼라를 벡터로 미분

$$\begin{gathered}
\frac{\partial{f}}{\partial{x}}=\nabla_{x}f=\begin{bmatrix}
    \frac{\partial{f}}{\partial{x_1}} \\
    \vdots \\
    \frac{\partial{f}}{\partial{x_n}}
\end{bmatrix}, \\
\text{where }x\in\mathbb{R}^n.
\end{gathered}$$

### 스칼라를 행렬로 미분

$$\begin{gathered}
\frac{\partial{f}}{\partial{X}}=\nabla_X{f}=\begin{bmatrix}
    \frac{\partial{f}}{\partial{x_{1,1}}} & \cdots & \frac{\partial{f}}{\partial{x_{1,m}}} \\
    \vdots & \ddots & \vdots \\
    \frac{\partial{f}}{\partial{x_{n,1}}} & \cdots & \frac{\partial{f}}{\partial{x_{n,m}}}
\end{bmatrix}, \\
\text{where }X\in\mathbb{R}^{n\times{m}}
\end{gathered}$$

### 벡터를 스칼라로 미분

$$\begin{gathered}
\frac{\partial{f}}{\partial{x}}=\begin{bmatrix}
    \frac{\partial{f_1}}{\partial{x}} & \cdots & \frac{\partial{f_n}}{\partial{x}}
\end{bmatrix}, \\
\text{where }f(x)\in\mathbb{R}^n.
\end{gathered}$$

### 벡터를 벡터로 미분

$$\begin{gathered}
\begin{aligned}
\frac{\partial{f}}{\partial{x}}&=\begin{bmatrix}
    \frac{\partial{f}}{\partial{x_1}} \\
    \vdots \\
    \frac{\partial{f}}{\partial{x_n}}
\end{bmatrix}=\begin{bmatrix}
    \frac{\partial{f_1}}{\partial{x}} & \cdots & \frac{\partial{f_m}}{\partial{x}}
\end{bmatrix} \\
&=\begin{bmatrix}
    \frac{\partial{f_1}}{\partial{x_1}} & \cdots & \frac{\partial{f_m}}{\partial{x_1}} \\
    \vdots & \ddots & \vdots \\
    \frac{\partial{f_1}}{\partial{x_n}} & \cdots & \frac{\partial{f_m}}{\partial{x_n}}
\end{bmatrix}
\end{aligned}, \\
\text{where }x\in\mathbb{R}^n\text{ and }f(x)\in\mathbb{R}^m.
\end{gathered}$$
