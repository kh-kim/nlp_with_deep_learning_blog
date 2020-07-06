---
layout: default
title: Teacher Forcing
parent: Sequence to Sequence
nav_order: 4-03-10
---

# Teacher Forcing

## Autoregressive Task

## MLE and Teacher Forcing

$$\begin{gathered}
\mathcal{D}=\{x^i,y^i\}_{i=1}^N \\
\begin{aligned}
\hat{\theta}&=\underset{\theta\in\Theta}{\text{argmax}}\sum_{i=1}^N{\log{P(y^i|x^i;\theta)}} \\
&=\underset{\theta\in\Theta}{\text{argmax}}\sum_{i=1}^N{\sum_{j=1}^n{\log{P(y_j^i|x^i,y_{<j}^i;\theta)}}},
\end{aligned} \\
\text{where }y^i=y_{1:n}^i=\{y_1^i,\cdots,y_n^i\}.
\end{gathered}$$
