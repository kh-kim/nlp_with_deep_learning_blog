---
layout: default
title: Dual Learning for Machine Translations
parent: Adv. Topics on Machine Translations
nav_order: 4-09-09
---

# Dual Learning for Machine Translation

[[He and Xia et al., 2016]](https://papers.nips.cc/paper/6469-dual-learning-for-machine-translation.pdf)

## Equations

$$\begin{gathered}
r=\alpha\times{r_{x\rightarrow{y}}}+(1-\alpha)\times{r_{y\rightarrow{x}}} \\
\\
\begin{aligned}
r_{x\rightarrow{y}}&=P(\hat{y})\text{, where }\hat{y}\sim{P(\text{y}|x;\theta_{x\rightarrow{y}})} \\
r_{y\rightarrow{x}}&=\log{P(x|\hat{y};\theta_{y\rightarrow{x}})}
\end{aligned} \\
\end{gathered}$$

$$\begin{gathered}
\theta_{x\rightarrow{y}}\leftarrow\theta_{x\rightarrow{y}}-\eta\frac{1}{K}\sum_{k=1}^K{
    \big[
        r_k\nabla_{\theta_{x\rightarrow{y}}}\log{P(\hat{y}_k|x;\theta_{x\rightarrow{y}})}
    \big]
} \\
\theta_{y\rightarrow{x}}\leftarrow\theta_{y\rightarrow{x}}-\eta\frac{1}{K}\sum_{k=1}^K\big[
    (1-\alpha)\nabla_{\theta_{y\rightarrow{x}}}\log{P(x|\hat{y}_k;\theta_{y\rightarrow{x}})}
\big]
\end{gathered}$$

## Evaluations

