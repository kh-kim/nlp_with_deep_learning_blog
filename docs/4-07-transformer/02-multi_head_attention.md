---
layout: default
title: Multi-head Attention
parent: Transformer
nav_order: 4-07-02
---

# Multi-head Attention

$$\begin{gathered}
\text{In case of }Q,K\text{ and }V\text{ come from same origin,} \\
|Q|=|K|=|V|=(\text{batch}\_\text{size},n\text{ or }m,\text{hidden}\_\text{size}). \\
\\
\text{In case of }Q\text{ and }K,V\text{ come from different origin,} \\
|Q|=(\text{batch}\_\text{size},n,\text{hidden}\_\text{size}) \\
|K|=|V|=(\text{batch}\_\text{size},m,\text{hidden}\_\text{size}).
\end{gathered}$$

$$\begin{gathered}
\text{Attention}(Q,K,V)=\text{softmax}(\frac{Q\cdot{K^\intercal}}{\sqrt{d_\text{head}}})\cdot{V} \\
\text{MultiHead}(Q,K,V)=[head_1;\cdots;head_h]\cdot{W}^O \\
\text{where }head_i=\text{Attention}(Q\cdot{W_i^Q},K\cdot{W_i^K},V\cdot{W_i^V}),\\
\text{and }W_i^Q\in\mathbb{R}^{d_\text{model}\times{d_\text{head}}},W_i^K\in\mathbb{R}^{d_\text{model}\times{d_\text{head}}},W_i^V\in\mathbb{R}^{d_\text{model}\times{d_\text{head}}},W^O\in\mathbb{R}^{(h\times{d_\text{head}})\times{d_\text{model}}}. \\
\\
d_\text{head}=d_\text{model}/h=64 \\
h=8,d_\text{model}=512
\end{gathered}$$
