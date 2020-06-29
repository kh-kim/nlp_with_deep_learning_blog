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

