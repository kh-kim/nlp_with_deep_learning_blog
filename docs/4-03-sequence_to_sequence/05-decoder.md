---
layout: default
title: Decoder
parent: Sequence to Sequence
nav_order: 4-03-05
---

# Decoder

$$\begin{gathered}
\mathcal{D}=\{x^i,y^i\}_{i=1}^N \\
x^i=\{x^i_1,\cdots,x^i_m\}\text{ and }y^i=\{y_0^i,y_1^i,\cdots,y_n^i\}, \\
\text{where }y_0=\text{<BOS>}\text{ and }y_n=\text{<EOS>}.
\end{gathered}$$

$$\begin{gathered}
h_t^\text{dec}=\text{RNN}_\text{dec}(\text{emb}_\text{dec}(\hat{y}_{t-1}),h_{t-1}^\text{dec}), \\
\text{where }h_0^\text{dec}=h_m^\text{enc}.
\end{gathered}$$

$$
h_{1:n}^\text{dec}=[h_1^\text{dec};\cdots;h_n^\text{dec}]
$$

<!--
## Parallel

$$\begin{aligned}
h_{1:n}^\text{dec}&=\text{RNN}_\text{dec}(\text{emb}_\text{dec}(y_{0:n-1}),h_0^\text{dec}) \\
&=\text{RNN}_\text{dec}(\text{emb}_\text{dec}(y_{0:n-1}),h_m^\text{enc})
\end{aligned}$$
-->
