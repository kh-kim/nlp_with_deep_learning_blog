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
}, \\
\text{where }g(j)\text{ is a layer index mapping function from student to teacher.}
\end{gathered}$$

$$\begin{gathered}
\mathcal{L}_\text{PKD}=(1-\alpha)\mathcal{L}_\text{CE}+\alpha\mathcal{L}_\text{KD}+\beta\mathcal{L}_\text{PT}
\end{gathered}$$

## TinyBERT

### Equations

#### Knowledge Distillation Formulation

$$\begin{gathered}
\mathcal{L}_\text{KD}=\sum_{x\in\mathcal{X}}{
    \Delta\big(f_S(x),f_T(x)\big)
}
\end{gathered}$$

#### Transformer Knowledge Distillation Formulation

$$\begin{gathered}
\mathcal{L}_\text{TKD}=\sum_{x\in\mathcal{X}}{
    \sum_{i=0}^{\ell_S}{
        \lambda_i\mathcal{L}_i\big(
            f_i^S(x),f_{g(i)}^T(x)
        \big)
    }
}, \\
\text{where }g(i)\text{ is a layer index mapping function from student to teacher.}
\end{gathered}$$

$$\begin{gathered}
\mathcal{L}_\text{attn}=\frac{1}{h}\sum_{i=1}^h{
    \text{MSE}(A_i^S,A_i^T)
}, \\
A=\frac{QK^\intercal}{\sqrt{d_k}}, \\
\text{Attention}(Q,K,V)=\text{softmax}(A)V, \\
\text{where }h\text{ is the number of attention heads and }A\text{ is attention matrix.}
\end{gathered}$$

$$\begin{gathered}
\mathcal{L}_\text{hidn}=\text{MSE}(H^S\cdot{W_h},H^T), \\
\text{where }H^S\in\mathbb{R}^{\text{length}\times{\tilde{d}}}\text{ and }H^T\in\mathbb{R}^{\text{length}\times{d}} \\
\text{ refer to the hidden states of student and teacher respectively,} \\
\text{and }W_h\in\mathbb{R}^{\tilde{d}\times{d}}\text{ is a projection matrix.}
\end{gathered}$$

$$\begin{gathered}
\mathcal{L}_\text{embd}=\text{MSE}(E^S\cdot{W_e},E^T), \\
\text{where }E^S,E^T,W_e\text{ refer to the token embeddings of student} \\
\text{and teacher networks and projection matrix, respectively.}
\end{gathered}$$

$$\begin{aligned}
\mathcal{L}_\text{pred}&=-\sum_{c\in\mathcal{C}}{
    P^T(\text{y}=c|x)\cdot\log{P^S(\text{y}=c|x)}
} \\
&=-\mathbb{E}_{\text{y}\sim{P^T(\cdot|x)}}\Big[
    \log{P^S(\text{y}|x)}
\Big]
\end{aligned}$$

$$\begin{gathered}
\mathcal{L}_i=\begin{cases}
    \mathcal{L}_\text{embd} &\text{if } i=0, \\
    \mathcal{L}_\text{attn}+\mathcal{L}_\text{hidn} &\text{if } 0<i\le\ell_S, \\
    \mathcal{L}_\text{pred} &\text{if }i=\ell_S+1.
\end{cases}
\end{gathered}$$
