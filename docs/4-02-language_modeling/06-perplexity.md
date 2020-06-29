---
layout: default
title: Perplexity
parent: Language Modeling
nav_order: 4-02-06
---

# Perplexity

$$\begin{aligned}
\text{PPL}(x_1,\cdots,x_n;\theta)&=P(x_1,\cdots,x_n;\theta)^{-\frac{1}{n}} \\
&=\sqrt[n]{\frac{1}{P(x_1,\cdots,x_n;\theta)}}
\end{aligned}$$

### By Chain Rule

$$\begin{aligned}
\text{PPL}(x_1,\cdots,x_n;\theta)&=P(x_1,\cdots,x_n;\theta)^{-\frac{1}{n}} \\
&=\sqrt[n]{\frac{1}{P(x_1,\cdots,x_n;\theta)}} \\
&=\sqrt[n]{\frac{1}{\prod_{i=1}^n{P(x_i|x_{<i};\theta)}}}
\end{aligned}$$

### By Markov Assumption

$$\begin{aligned}
\text{PPL}(x_1,\cdots,x_n;\theta)&=P(x_1,\cdots,x_n;\theta)^{-\frac{1}{n}} \\
&=\sqrt[n]{\frac{1}{P(x_1,\cdots,x_n;\theta)}} \\
&=\sqrt[n]{\frac{1}{\prod_{i=1}^n{P(x_i|x_{<i};\theta)}}} \\
&\approx\sqrt[n]{\frac{1}{\prod_{i=1}^n{P(x_i|x_{i-1},\cdots,x_{i-k};\theta)}}}
\end{aligned}$$

## Understand Perplexity

$$\begin{gathered}
\mathcal{D}=\{x_i\}_{i=1}^n\text{, where }x_i\sim{P(\text{x})}\text{ and }\forall{x}\in\{1,2,3,4,5,6\}. \\
\\
\begin{aligned}
\text{PPL}(x_1,\cdots,x_n)&=\sqrt[n]{\frac{1}{P(x_1,\cdots,x_n)}} \\
&=\sqrt[n]{\frac{1}{\prod_{i=1}^n{P(x_i)}}} \\
&=\sqrt[n]{\frac{1}{(\frac{1}{6})^n}}=6
\end{aligned}
\end{gathered}$$
