---
layout: default
title: Equations
parent: Word Embedding
nav_order: 11
---

# 수식: Word2Vec, GloVe & FastText

## Skip-gram

$$
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmax}}\sum_{t=1}^T{\sum_{c\in\mathcal{C}_t}{\log{p(w_c|w_t)}}}
$$

$$\begin{gathered} p(w_c|w_t)=\frac{e^{s(w_t, w_c)}}{\sum_{j=1}^{|V|}{e^{s(w_t, w_j)}}}, \\ \text{where }s(w, w')=\mathbf{u}_{w}^{\top}\mathbf{v}_{w'}. \end{gathered}$$

$$
\theta=\{W,W'\}\text{, where }W=\{\mathbf{u}_1,\cdots,\mathbf{u}_{|V|}\}\text{ and }W=\{\mathbf{v}_1,\cdots,\mathbf{v}_{|V|}\}.
$$

### Negative Sampling

$$\begin{gathered} \log{\big(1+e^{-s(w_t,w_c)}\big)}+\sum_{n\in\mathcal{N}}{\log{\big(1+e^{s(w_t,w_n)}\big)}}, \\ \text{where }\mathcal{N}\text{ is a set of negative examples sampled from the vocabulary.} \end{gathered}$$

## GloVe

$$\begin{gathered} \hat{\theta}=\underset{\theta\in\Theta}{\text{argmin}}\sum_{x\in\mathcal{X}}f(x)\times||W'Wx-\log{C_x}||_2^2, \\ \text{where }C_x\text{ is a vector of co-occurences with x,} \\ W\in\mathbb{R}^{d\times|V|}\text{ and }W\in\mathbb{R}^{|V|\times{d}}. \end{gathered}$$

$$
f(x)=\begin{cases}
(\text{count(x) / \text{thres}})^\alpha&\text{ if }\text{count}(x)<\text{thres}, \\
1&\text{ otherwise.}
\end{cases}
$$

## FastText

$$\begin{gathered} s(w, w')=\sum_{g\in\mathcal{G}_w}{\mathbf{z}_g^\top\mathbf{v}_{w'}}, \\ \text{where }\mathcal{G}_w\text{ is a set of subword n-grams.} \\ \text{e.g. }\mathcal{G}_{w=\text{where}}=\{\text{<wh, whe, her, ere, re>}\}. \end{gathered}$$

