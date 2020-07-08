---
layout: default
title: Input Feeding
parent: Sequence to Sequence
nav_order: 4-03-09
---

# Input Feeding

## Motivations

## Equations

### Datatset

$$\begin{gathered}
\mathcal{D}=\{x^i,y^i\}_{i=1}^N \\
x^i=\{x^i_1,\cdots,x^i_m\}\text{ and }y^i=\{y_0^i,y_1^i,\cdots,y_n^i\}, \\
\text{where }y_0=\text{<BOS>}\text{ and }y_n=\text{<EOS>}.
\end{gathered}$$

### What we want

$$
\hat{y}_{1:n}=f(x_{1:m}:\theta)
$$

### Encoder

$$
h_{1:m}^\text{enc}=\text{RNN}_\text{enc}(\text{emb}_\text{enc}(x_{1:m}),h_0^\text{enc})\text{, where }h_0^\text{enc}=0.
$$

### Decoder

$$\begin{gathered}
h_t^\text{dec}=\text{RNN}_\text{dec}([\text{emb}_\text{dec}(y_{t-1});\tilde{h}_{t-1}^\text{dec}],h_{t-1}^\text{dec}), \\
\text{where }h_0^\text{dec}=h_m^\text{enc}.
\end{gathered}$$

### Attention

$$\begin{gathered}
w=\text{softmax}(h_t^\text{dec}\cdot{W_\text{a}}\cdot{h_{1:m}^\text{enc}}^\intercal) \\
c=w\cdot{h_{1:m}^\text{enc}}, \\
\text{where }W_\text{a}\in\mathbb{R}^{\text{hidden}\_\text{size}\times\text{hidden}\_\text{size}}.
\end{gathered}$$

### Generator

$$\begin{gathered}
\tilde{h}_t^\text{dec}=\tanh([h_t^\text{dec};c]\cdot{W_\text{concat}}) \\
\hat{y}_t=\text{softmax}(\tilde{h}_t^\text{dec}\cdot{W_\text{gen}}), \\
\text{where }W_\text{concat}\in\mathbb{R}^{(2\times\text{hidden}\_\text{size})\times\text{hidden}\_\text{size}}\text{ and }W_\text{gen}\in\mathbb{R}^{\text{hidden}\_\text{size}\times|V|}.
\end{gathered}$$

### Objective Function

$$\begin{aligned}
\mathcal{L}(\theta)&=-\sum_{i=1}^N{\sum_{t=1}^n{\log{P}(y_t^i|x^i,y_{<t}^i;\theta)}} \\
&=-\sum_{i=1}^N{
    \sum_{t=1}^n{
        {y_t^i}^\intercal\cdot\log{\hat{y_t}^i}
    }
}
\end{aligned}$$

$$
\theta\leftarrow\theta-\eta\nabla_\theta\mathcal{L}(\theta)
$$
