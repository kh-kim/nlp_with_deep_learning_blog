---
layout: default
title: Basic Math
parent: Introduction to Deep Learning
nav_order: 1-02-04
---

# Basic Math

## 벡터와 행렬

## 지수와 로그

### 지수

$$\begin{gathered}
y=x^n
\end{gathered}$$

#### 지수의 법칙

##### 기본 법칙

$$\begin{gathered}
a^0=1 \\
\\
a^{-n}=\frac{1}{a^n} \\
\\
\sqrt[n]{a}=a^{\frac{1}{n}} \\
\end{gathered}$$

##### 연산 법칙

$$\begin{gathered}
a^n\times{a}^m=a^{n+m} \\
\\
(a^m)^n=a^{mn} \\
\\
(ab)^n=a^n\times{b}^n \\
\\
\Big(\frac{a}{b}\Big)^n=\frac{a^n}{b^n} \\
\end{gathered}$$

##### 응용

$$\begin{gathered}
a^n\div{a}^m=a^{n-m} \\
\\
\sqrt[m]{a^n}=(a^n)^{\frac{1}{m}}=a^{\frac{n}{m}} \\
\end{gathered}$$

### 로그

$$\begin{gathered}
y=\log{x} \\
\end{gathered}$$

#### 지수와 로그의 관계

$$\begin{aligned}
y&=e^x \\
\log{y}&=x \\
\end{aligned}$$

#### 로그의 법칙

##### 기본 법칙

$$\begin{gathered}
\log{1}=0 \\
\\
\log{0}=-\infty
\end{gathered}$$

##### 연산 법칙

$$\begin{gathered}
\log{a}+\log{b}=\log{ab} \\
\\
\log{a}-\log{b}=\log{\frac{a}{b}} \\
\\
\log{a^b}=b\log{a}
\end{gathered}$$

## Sum & Product

$$\begin{gathered}
\sum_{i=1}^n{
    x_i
}=x_1+\cdots+x_n
\end{gathered}$$

```python
x=[i + 1 for i in range(n)]

ret = 0
for x_i in x:
    ret += x_i

print(ret)
```

$$\begin{gathered}
\prod_{i=1}^n{
    x_i
}=x_1\times\cdots\times{x}_n
\end{gathered}$$

```python
x=[i + 1 for i in range(n)]

ret = 1
for x_i in x:
    ret *= x_i

print(ret)
```

## Argmax

$$\begin{gathered}
\hat{x}=\underset{x\in\mathcal{X}}{\text{argmax }}f(x)
\end{gathered}$$

```python
import numpy as np

X=[i + 1 for i in range(n)]

def f(x):
    return -np.log(x)

max_val = -np.inf
argmax = None
for x in X:
    val = f(x)
    if val > max_val:
        max_val = val
        argmax = x

print(argmax)
```

