---
layout: default
title: Back Translations
parent: Adv. Topics on NLG
nav_order: 4-08-03
---

# Back Translation

## Motivation

## Methodology

$$\begin{gathered}
\mathcal{B}=\{x_n,y_n\}_{n=1}^N \\
\mathcal{M}=\{y_s\}_{s=1}^S
\end{gathered}$$

$$\begin{gathered}
\hat{\mathcal{M}}=\{\hat{x}_s,y_s\}_{s=1}^S, \\
\text{where }\hat{x}_s=\underset{x\in\mathcal{X}}{\text{argmax}}\log{P(x|y_s;\theta_{y\rightarrow{x}})}.
\end{gathered}$$

$$\begin{gathered}
\mathcal{L}(\theta_{x\rightarrow{y}})=-\sum_{i=n}^N{
    \log{P(y_n|x_n;\theta_{x\rightarrow{y}})}
}
-\sum_{s=1}^S{
    \log{P(y_s|\hat{x}_s;\theta_{x\rightarrow{y}})}
} \\
\end{gathered}$$

### Copied Translation

$$\begin{gathered}
\mathcal{L}(\theta_{x\rightarrow{y}})=-\sum_{i=n}^N{
    \log{P(y_n|x_n;\theta_{x\rightarrow{y}})}
}
-\sum_{s=1}^S{
    \log{P(y_s|y_s;\theta_{x\rightarrow{y}})}
} \\
\end{gathered}$$

## Limitations

## Breakthrough: Tagged Back Translation

[[Caswell et al., 2019]](https://arxiv.org/abs/1906.06442)

### Why?
