---
layout: default
title: LM Equations
parent: Language Modeling
nav_order: 02
---

# 언어 모델 수식

$$\begin{gathered}
\mathcal{D}=\{x^i\}_{i=1}^N \\
\hat{\theta}={\underset{\theta\in\Theta}{\text{argmax}}}\sum_{i=1}^N{\log{P(x_{1:n}^i;\theta)}} \\
\text{where }x_{1:n}=\{x_1,\cdots,x_n\}.
\end{gathered}$$

## Chain Rule

$$\begin{aligned}
P(A,B,C,D)&=P(D|A,B,C)P(A,B,C) \\
&=P(D|A,B,C)P(C|A,B)P(A,B) \\
&=P(D|A,B,C)P(C|A,B)P(B|A)P(A)
\end{aligned}$$

## By Chain Rule

$$\begin{aligned}
P(x_{1:n})&=P(x_1,\cdots,x_n) \\
&=P(x_n|x_1,\cdots,x_{n-1})\cdots{P(x_2|x_1)}P(x_1) \\
&=\prod_{i=1}^n{P(x_i|x_{<i})}
\end{aligned}$$

$$
\log{P(x_{1:n})}=\sum_{i=1}^N{\log{P(x_i|x_{<i})}}
$$

### Redefine objective function

$$\begin{gathered}
\mathcal{D}=\{x^i\}_{i=1}^N \\
\begin{aligned}
\hat{\theta}&={\underset{\theta\in\Theta}{\text{argmax}}}\sum_{i=1}^N{\log{P(x_{1:n}^i;\theta)}} \\
&={\underset{\theta\in\Theta}{\text{argmax}}}\sum_{i=1}^N{\sum_{j=1}^n{\log{P(x_j^i|x_{<j}^i;\theta)}}}
\end{aligned} \\
\text{where }x_{1:n}=\{x_1,\cdots,x_n\}.
\end{gathered}$$

### Also, we can

$$
\hat{x_t}=\underset{\text{x}_t\in\mathcal{X}}{\text{argmax}}\log{P(\text{x}_t|x_{<t};\theta)}
$$
