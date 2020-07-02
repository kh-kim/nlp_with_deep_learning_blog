---
layout: default
title: Multi-head Attention
parent: Transformer
nav_order: 4-07-02
---

# Multi-head Attention

$$\begin{gathered}
\text{Attention}(Q,K,V)=\text{softmax}(\frac{Q\cdot{K^\intercal}}{\sqrt{d_k}})\cdot{V} \\
\text{MultiHead}(Q,K,V)=[head_1;\cdots;head_h]\cdot{W}^O \\
\text{where }head_i=\text{Attention}(Q\cdot{W_i^Q},K\cdot{W_i^K},V\cdot{W_i^K}),\\
\text{and }W_i^Q\in\mathbb{R}^{d_\text{model}\times{d_k}},W_i^K\in\mathbb{R}^{d_\text{model}\times{d_k}},W_i^V\in\mathbb{R}^{d_\text{model}\times{d_v}},W^O\in\mathbb{R}^{(h\times{d_v})\times{d_\text{model}}}. \\
\\
d_k=d_v=d_\text{model}/h=64 \\
h=8,d_\text{model}=512
\end{gathered}$$
