---
layout: default
title: Introduction to Calculus
parent: Gradient Descent
nav_order: 1-06-01
---

# Brief Introduction to Calculus

## 기울기

$$\begin{gathered}
\frac{\Delta{y}}{\Delta{x}}=\frac{y_2-y_1}{x_2-x_1}
\end{gathered}$$

## 극한(무한소)과 미분

$$\begin{gathered}
y=f(x) \\
\frac{dy}{dx}=\lim_{h\rightarrow0}\frac{f(x+h)-f(x)}{(x+h)-x}
\end{gathered}$$

## 도함수

$$\begin{gathered}
g(x)=\lim_{h\rightarrow0}\frac{f(x+h)-f(x)}{(x+h)-x} \\
\\
y'=f'(x)=g(x)
\end{gathered}$$

## 뉴턴 vs 라이프니츠

$$\begin{gathered}
y'=f'(x)
\end{gathered}$$

$$\begin{gathered}
\frac{dy}{dx}=\frac{df}{dx}
\end{gathered}$$

### 합성함수 미분

$$\begin{aligned}
y&=f\circ{g}(x) \\
&=f(g(x)) \\
\\
y&=f(h) \\
h&=g(x)
\end{aligned}$$

#### 뉴턴

$$\begin{gathered}
y'=f'(g(x))\cdot{g'(x)}
\end{gathered}$$

#### 라이프니츠

$$\begin{aligned}
\frac{dy}{dx}&=\frac{df}{dh}\cdot\frac{dh}{dx} \\
&=f'(h)\cdot{\Big(\frac{d}{dx}g(x)\Big)} \\
&=f'(g(x))\cdot{g'(x)}
\end{aligned}$$

## 적분

$$\begin{gathered}
\begin{aligned}
\frac{dy}{dx}&=f(x) \\
\\
dy&=f(x)dx \\
\\
\int{dy}&=\int{f(x)dx} \\
y&=F(x)+C
\end{aligned} \\
\text{where }F'(x)=f(x).
\end{gathered}$$

### 치환 적분

$$\begin{gathered}
y=f(x) \\
\\
\begin{aligned}
\int{f(x)}dx&=\int{f(x)}\frac{dt}{dt}dx \\
&=\int{f(x)}\frac{dx}{dt}dt \\
&=\int{f(x)\Big(\frac{d}{dt}g(t)\Big)}dt\text{, where }x=g(t). \\
&=\int{f(x)\cdot{g'(t)}}dt \\
&=\int{f(g(t))\cdot{g'(t)}}dt
\end{aligned}
\end{gathered}$$
