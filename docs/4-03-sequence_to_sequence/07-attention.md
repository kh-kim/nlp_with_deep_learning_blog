---
layout: default
title: Attention
parent: Sequence to Sequence
nav_order: 4-03-07
---

# Attention

$$\begin{gathered}
w=\text{softmax}(h_t^\text{dec}\cdot{W_\text{a}}\cdot{h_{1:m}^\text{enc}}^T) \\
c=w\cdot{h_{1:m}^\text{enc}}, \\
\text{where }c\in\mathbb{R}^{\text{batch}\_\text{size}\times1\times\text{hidden}\_\text{size}}\text{ is a context vector, and }W_\text{a}\in\mathbb{R}^{\text{hidden}\_\text{size}\times\text{hidden}\_\text{size}}.
\end{gathered}$$

$$\begin{gathered}
\tilde{h}_t^\text{dec}=\tanh([h_t^\text{dec};c]\cdot{W_\text{concat}}) \\
\hat{y}_t=\text{softmax}(\tilde{h}_t^\text{dec}\cdot{W_\text{gen}}), \\
\text{where }W_\text{concat}\in\mathbb{R}^{(2\times\text{hidden}\_\text{size})\times\text{hidden}\_\text{size}}\text{ and }W_\text{gen}\in\mathbb{R}^{\text{hidden}\_\text{size}\times|V|}.
\end{gathered}$$
