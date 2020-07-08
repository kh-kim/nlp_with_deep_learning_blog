---
layout: default
title: Conditional Sequence to Sequence
parent: Adv. Topics on NLG
nav_order: 4-08-01
---

# Conditional Sequence-to-Sequence

## Autoencoders

$$\begin{gathered}
\mathcal{A}(x)=f\circ{g(x)}, \\
\text{where }f\text{ is decoder, and }g\text{ is encoder.}
\end{gathered}$$

$$\begin{aligned}
\mathcal{L}(\mathcal{A})=\sum_{i=1}^N{
    \|\mathcal{A}(x_i)-x_i\|
}
\end{aligned}$$

## Conditional Autoencoders

$$\begin{gathered}
\mathcal{D}=\{x_i,c_i\}_{i=1}^N
\end{gathered}$$

$$\begin{aligned}
\mathcal{L}(f,g)=\sum_{i=1}^N{
    \|f(g(x_i,c_i),c_i)-x_i\|
}
\end{aligned}$$

## Training Conditional Sequence-to-Sequence

$$\begin{gathered}
\mathcal{D}=\{x_i,y_i,c_i\}_{i=1}^N, \\
\text{where }c\text{ is condition such as translation mode.}
\end{gathered}$$

$$\begin{aligned}
\mathcal{L}(\theta)&=-\sum_{i=1}^N{
    \log{P(y_i|x_i,c_i;\theta)}
} \\
&=-\sum_{i=1}^N{
    \log{P(y_i|z_i,c_i;\phi)},
    \text{ where }z_i=\text{enc}(x_i;\psi)\text{ and }\theta=\{\phi,\psi\}.
}
\end{aligned}$$

$$\theta\leftarrow\theta-\eta\nabla_\theta\mathcal{L}(\theta)$$

## Zero-Shot Translation

[[Johnson and Schuster et al., 2016]](https://www.aclweb.org/anthology/Q17-1024.pdf)

### Possible Applications?

