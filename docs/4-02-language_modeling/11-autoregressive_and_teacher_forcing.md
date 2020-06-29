---
layout: default
title: Autoregressive and Teacher Forcing
parent: Language Modeling
nav_order: 4-02-11
---

# Autoregressive and Teacher Forcing

## Inference

$$
\hat{x}_t=\underset{x_t\in\mathcal{X}}{\text{argmax}}\log{P(x_t|\hat{x}_{<t};\theta)}
$$

## MLE

$$\begin{gathered}
\mathcal{D}=\{x^i\}_{i=1}^N \\
\begin{aligned}
\hat{\theta}&=\underset{\theta\in\Theta}{\text{argmax}}\sum_{i=1}^N{\log{P(x^i;\theta)}} \\
&=\underset{\theta\in\Theta}{\text{argmax}}\sum_{i=1}^N{\sum_{j=1}^n{\log{P(x_j^i|x_{<j}^i;\theta)}}},
\end{aligned} \\
\text{where }x^i=x_{1:n}^i=\{x_1^i,\cdots,x_n^i\}.
\end{gathered}$$