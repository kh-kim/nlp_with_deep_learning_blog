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

generator

$$\begin{gathered}
\hat{y}_{t}=\text{softmax}(h_{t}^\text{dec}\cdot{W}_\text{gen}), \\
\text{where }h_{t}^\text{dec}\in\mathbb{R}^{\text{batch}\_\text{size}\times{1}\times\text{hidden}\_\text{size}}\text{ and }W_\text{gen}\in\mathbb{R}^{\text{hidden}\_\text{size}\times|V|}.
\end{gathered}$$

from decoder,

$$\begin{gathered}
h_t^\text{dec}=\text{RNN}_\text{dec}(\text{emb}_\text{dec}(\hat{y}_{t-1}),h_{t-1}^\text{dec}), \\
\text{where }h_0^\text{dec}=h_m^\text{enc}.
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
