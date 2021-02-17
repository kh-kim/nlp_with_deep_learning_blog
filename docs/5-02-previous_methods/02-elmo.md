---
layout: default
title: ELMo
parent: Transfer Learning
nav_order: 5-02-02
---

# ELMo

## Previous Methods

## Overview

## Equations

$$\begin{gathered}
x=\{w_1,\cdots,w_n\} \\
\\
P(x)=P(w_1,\cdots,w_n)=\prod_{t=1}^n{
    P(w_t|w_{<t})
}
\end{gathered}$$

$$\begin{aligned}
P(x)=P(w_1,\cdots,w_n)&=\prod_{t=1}^n{
    P(w_t|w_{<t})
} \\
&=\prod_{t=1}^n{
    P(w_t|w_{>t})
}
\end{aligned}$$

$$\begin{gathered}
\begin{aligned}
\mathcal{L}(\theta_\text{PLM})=\sum_{t=1}^n
    \Big(
        &\log{P(w_t|t_{<t};\theta_{\text{emb}},\overrightarrow{\theta}_{\text{LM}},\theta_{\text{softmax}})} \\
        &+\log{P(w_t|t_{>t};\theta_{\text{emb}},\overleftarrow{\theta}_{\text{LM}},\theta_{\text{softmax}})}
    \Big),
\end{aligned} \\
\text{where }\theta_{\text{PLM}}=\{\theta_\text{emb},\overrightarrow{\theta}_\text{LM},\overleftarrow{\theta}_\text{LM},\theta_\text{softmax}\}.
\end{gathered}$$

$$\begin{gathered}
\hat{\theta}_\text{PLM}=\underset{\theta_\text{PLM}\in\Theta}{\text{argmin }}\mathcal{L}(\theta_\text{PLM})
\end{gathered}$$

$$\begin{gathered}
\overrightarrow{h}_{t,i}=\text{RNN}(\overrightarrow{h}_{t,i-1},\overrightarrow{h}_{t-1,i};\overrightarrow{\theta}_\text{LM}), \\
\text{where }\overrightarrow{h}_{t,0}=\overleftarrow{h}_{t,0}=\text{emb}(w_t;\theta_\text{emb})\text{ and }\overrightarrow{h}_{0,i}=\overleftarrow{h}_{0,i}=0.
\end{gathered}$$

$$\begin{gathered}
\overrightarrow{h}_t=\{\overrightarrow{h}_{t,0},\cdots,\overrightarrow{h}_{t,\ell}\}, \\
\overleftarrow{h}_t=\{\overleftarrow{h}_{t,0},\cdots,\overleftarrow{h}_{t,\ell}\}
\end{gathered}$$

$$\begin{gathered}
P(\cdot|w_{<t},w_t)=\text{softmax}(\overrightarrow{h}_{t,\ell};\theta_\text{softmax})
\end{gathered}$$

$$\begin{aligned}
h_{t,i}=[\overrightarrow{h}_{t,i};\overleftarrow{h}_{t,i}]
\end{aligned}$$

$$\begin{gathered}
\text{ELMo}_t^{task}=\gamma^{task}\sum_{i=0}^\ell{
    \lambda_i^{task}h_{t,i}
}, \\
\text{ where }\sum_{i=0}^\ell{
    \lambda_i^{task}
}=1.
\end{gathered}$$

## Evaluations

## Wrap-up
