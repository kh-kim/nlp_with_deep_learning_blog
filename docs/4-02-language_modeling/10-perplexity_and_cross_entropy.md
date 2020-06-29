---
layout: default
title: Perplexity and Cross Entropy
parent: Language Modeling
nav_order: 4-02-10
---

# Perplexity and Cross Entropy

$$\begin{aligned}
\text{PPL}(x_1,\cdots,x_n;\theta)&=P(x_1,\cdots,x_n;\theta)^{-\frac{1}{n}} \\
&=\sqrt[n]{\frac{1}{P(x_1,\cdots,x_n;\theta)}} \\
&=\sqrt[n]{\frac{1}{\prod_{i=1}^n{P(x_i|x_{<i};\theta)}}}
\end{aligned}$$

## Cross Entropy

$$\begin{aligned}
H(P,P_\theta)&=-\mathbb{E}_{x_{1:n}\sim{P}}[\log{P(x_{1:n};\theta)}] \\
&\approx-\frac{1}{n}\sum_{x_{1:n}\in\mathcal{X}}{P(x_{1:n})\log{P(x_{1:n};\theta)}} \\
&\approx-\frac{1}{n\times{N}}\sum_{i=1}^N\log{P(x_{1:n}^i;\theta)}\text{, by Monte-carlo} \\
&\approx-\frac{1}{n}\log{P(x_{1:n};\theta)}\text{, where }N=1 \\
&\approx-\frac{1}{n}\sum_{i=1}^n{\log{P(x_i|x_{<i};\theta)}} \\
&=\mathcal{L}(x_{1:n};\theta)
\end{aligned}$$

$$\begin{aligned}
\mathcal{L}(x_{1:n};\theta)&\approx-\frac{1}{n}\sum_{i=1}^n{\log{P(x_i|x_{<i};\theta)}} \\
&=-\frac{1}{n}\log{\prod_{i=1}^n{P(x_i|x_{<i};\theta)}} \\
&=\log{\sqrt[n]{\frac{1}{\prod_{i=1}^n{P(x_i|x_{<i};\theta)}}}} \\
&=\log{\text{PPL}(x_{1:n};\theta)}
\end{aligned}$$
