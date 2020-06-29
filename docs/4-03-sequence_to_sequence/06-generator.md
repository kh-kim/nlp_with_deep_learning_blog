---
layout: default
title: Generator
parent: Sequence to Sequence
nav_order: 4-03-06
---

# Generator

$$\begin{gathered}
\mathcal{D}=\{x^i,y^i\}_{i=1}^N \\
x^i=\{x^i_1,\cdots,x^i_m\}\text{ and }y^i=\{y_0^i,y_1^i,\cdots,y_n^i\}, \\
\text{where }y_0=\text{<BOS>}\text{ and }y_n=\text{<EOS>}.
\end{gathered}$$

from decoder,

$$\begin{aligned}
h_{1:n}^\text{dec}&=\text{RNN}_\text{dec}(\text{emb}_\text{dec}(y_{0:n-1}),h_0^\text{dec}) \\
&=\text{RNN}_\text{dec}(\text{emb}_\text{dec}(y_{0:n-1}),h_m^\text{enc})
\end{aligned}$$

generator

$$\begin{gathered}
\hat{y}_{1:n}=\text{softmax}(h_{1:n}^\text{dec}\cdot{W}_\text{gen}), \\
\text{where }h_{1:n}^\text{dec}\in\mathbb{R}^{\text{batch}\_\text{size}\times{n}\times\text{hidden}\_\text{size}}\text{ and }W_\text{gen}\in\mathbb{R}^{\text{hidden}\_\text{size}\times|V|}.
\end{gathered}$$

## Loss Function

$$\begin{aligned}
\mathcal{L}(\theta)&=-\sum_{i=1}^N{\log{P(y^i|x^i;\theta)}} \\
&=-\sum_{i=1}^N{\sum_{j=1}^n{\log{P(y_j^i|x^i,y_{<j}^i;\theta)}}}
\end{aligned}$$

$$\begin{gathered}
\log{P(y_t|x,y_{<t})}=y_t^T\cdot\log\hat{y}_t, \\
\text{where }y_t\text{ is one-hot vector, and }\hat{y}_t\text{ is a probability distribution from softmax.}
\end{gathered}$$
