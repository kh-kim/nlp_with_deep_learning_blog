---
layout: default
title: Encoder
parent: Transformer
nav_order: 4-07-03
---

# Encoder

## Equations

### Datatset

$$\begin{gathered}
\mathcal{D}=\{x^i,y^i\}_{i=1}^N \\
x^i=\{x^i_1,\cdots,x^i_m\}\text{ and }y^i=\{y_0^i,y_1^i,\cdots,y_n^i\}, \\
\text{where }y_0=\text{<BOS>}\text{ and }y_n=\text{<EOS>}.
\end{gathered}$$

### What we want

$$\hat{y}_{1:n}=f(x_{1:m}:\theta)$$

### Encoder Block

$$\begin{gathered}
h_{0,1:m}=\text{emb}(x_{1:m})+\text{pos}(1,m) \\
\tilde{h}_{i,1:m}^\text{enc}=\text{LayerNorm}(\text{Multihead}_i(Q,K,V)+h_{i-1,1:m}^\text{enc}), \\
\text{where }Q=K=V=h_{i-1,1:m}^\text{enc}. \\
\end{gathered}$$

$$\begin{gathered}
\text{FFN}(h_{i,t})=\text{ReLU}(h_{i,t}\cdot{W_i^1})\cdot{W}_i^2 \\
\text{where }W_i^1\in\mathbb{R}^{d_\text{model}\times{d_\text{ff}}}\text{ and }W_i^2\in\mathbb{R}^{d_\text{ff}\times{d_\text{model}}}. \\
\\
h_{i,1:m}^\text{enc}=\text{LayerNorm}([\text{FFN}(\tilde{h}_{i,1}^\text{enc});\cdots;\text{FFN}(\tilde{h}_{i,m}^\text{enc})]+\tilde{h}_{i,1:m}^\text{enc})
\end{gathered}$$

### Encoder

$$\begin{gathered}
h_{\ell_\text{enc},1:m}^\text{enc}=\text{Block}_\text{enc}(h_{\ell_\text{enc}-1,1:m}^\text{enc}) \\
\cdots \\
h_{1,1:m}^\text{enc}=\text{Block}_\text{enc}(h_{0,1:m}^\text{enc}) \\
\end{gathered}$$
