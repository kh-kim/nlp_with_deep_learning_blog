---
layout: default
title: Decoder with Masking
parent: Transformer
nav_order: 4-07-04
---

# Decoder with Masking


## Equations

### Datatset

$$\begin{gathered}
\mathcal{D}=\{x^i,y^i\}_{i=1}^N \\
x^i=\{x^i_1,\cdots,x^i_m\}\text{ and }y^i=\{y_0^i,y_1^i,\cdots,y_n^i\}, \\
\text{where }y_0=\text{<BOS>}\text{ and }y_n=\text{<EOS>}.
\end{gathered}$$

### Decoder Block

#### Self-Attention with Masking

$$\begin{gathered}
h_{0,1:n}=\text{emb}(y_{0:n-1})+\text{pos}(0,n-1) \\
\tilde{h}_{i,1:n}^\text{dec}=\text{LayerNorm}(\text{Multihead}_i(Q,K,V)+h_{i-1,1:n}^\text{dec}), \\
\text{where }Q=K=V=h_{i-1,1:n}^\text{dec}. \\
\end{gathered}$$

##### Masking

#### Attention

$$\begin{gathered}
\tilde{h}_{i,1:n}^\text{dec}=\text{LayerNorm}(\text{Multihead}_i(Q,K,V)+h_{i-1,1:n}^\text{dec}), \\
\text{where }Q=\tilde{h}_{i,1:n}^\text{dec}\text{ and }K=V=h_{\ell,1:m}^\text{dec}.
\end{gathered}$$

##### Masking

#### Feed-forward Networks

$$\begin{gathered}
\text{FFN}(h_{i,t})=\text{ReLU}(h_{i,t}\cdot{W_i^1})\cdot{W}_i^2 \\
\text{where }W_i^1\in\mathbb{R}^{d_\text{model}\times{d_\text{ff}}}\text{ and }W_i^2\in\mathbb{R}^{d_\text{ff}\times{d_\text{model}}}. \\
\\
h_{i,1:m}^\text{dec}=\text{LayerNorm}([\text{FFN}(\tilde{h}_{i,1}^\text{dec});\cdots;\text{FFN}(\tilde{h}_{i,m}^\text{dec})]+\tilde{h}_{i,1:m})
\end{gathered}$$

### Decoder

$$\begin{gathered}
h_{\ell_\text{dec},1:m}^\text{dec}=\text{Block}_\text{dec}(h_{\ell_\text{dec}-1,1:m}^\text{dec}) \\
\cdots \\
h_{1,1:m}^\text{dec}=\text{Block}_\text{dec}(h_{0,1:m}^\text{dec}) \\
\end{gathered}$$

### Generator

$$\begin{gathered}
\hat{y}_{1:n}=\text{softmax}(h_{\ell_\text{dec},1:m}^\text{dec}\cdot{W}_\text{gen}), \\
\text{where }h_{\ell_\text{dec},1:m}^\text{dec}\in\mathbb{R}^{\text{batch}\_\text{size}\times{n}\times\text{hidden}\_\text{size}}\text{ and }W_\text{gen}\in\mathbb{R}^{\text{hidden}\_\text{size}\times|V|}.
\end{gathered}$$