---
layout: default
title: PLM Compression with Knowledge Distillation
parent: Light PLMs
nav_order: 5-05-04
---

# PLM Compression with Knowledge Distillation

## PKD-BERT

### Equations

$$\begin{gathered}
\mathcal{L}_\text{PT}=\sum_{i=1}^N{
    \sum_{j=1}^\ell{
        \bigg\|
            \frac{h_{i,j}^S}{\|h_{i,j}^S\|_2}-\frac{h_{i,g(j)}^T}{\|h_{i,g(j)}^T\|_2}
        \bigg\|_2^2
    }
}
\end{gathered}$$

$$\begin{gathered}
\mathcal{L}_\text{PKD}=(1-\alpha)\mathcal{L}_\text{CE}+\alpha\mathcal{L}_\text{KD}+\beta\mathcal{L}_\text{PT}
\end{gathered}$$

## TinyBERT

### Equations
