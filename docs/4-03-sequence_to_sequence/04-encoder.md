---
layout: default
title: Encoder
parent: Sequence to Sequence
nav_order: 04
---

# Encoder

$$\begin{gathered}
\mathcal{D}=\{x^i,y^i\}_{i=1}^N \\
x^i=\{x^i_1,\cdots,x^i_m\}\text{ and }y^i=\{y_0^i,y_1^i,\cdots,y_n^i\}, \\
\text{where }y_0=\text{<BOS>}\text{ and }y_n=\text{<EOS>}.
\end{gathered}$$

$$
h_t^\text{enc}=\text{RNN}_\text{enc}(\text{emb}_\text{enc}(x_t),h_{t-1}^\text{enc})\text{, where }h_0^\text{enc}=0.
$$

$$\begin{gathered}
h_{1:m}^\text{enc}=[h_1^\text{enc};\cdots;h_m^\text{enc}], \\
\text{where }h_t^\text{enc}\in\mathbb{R}^{\text{batch\_size}\times1\times\text{hidden\_size}}\text{ and }h_{1:m}^\text{enc}\in\mathbb{R}^{\text{batch\_size}\times{m}\times\text{hidden\_size}}.
\end{gathered}$$

if encoder is bi-directional,

$$
h_t^\text{enc}\in\mathbb{R}^{\text{batch\_size}\times1\times(2\times\text{hidden\_size})}\text{ and }h_{1:m}^\text{enc}\in\mathbb{R}^{\text{batch\_size}\times{m}\times(2\times\text{hidden\_size})}.
$$

Note that these notation is for single layered RNN encoder.
