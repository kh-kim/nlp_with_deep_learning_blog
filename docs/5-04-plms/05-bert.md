---
layout: default
title: Autoencoding Models - BERT
parent: Pretrained Language Models
nav_order: 5-04-05
---

# Autoencoding Models - BERT

## Previous Methods

## Methodology

### Masked Language Model

### Next Sentence Prediction

### Embedding Combination

### Fine-tuning

$$\begin{gathered}
\begin{aligned}
P(\cdot|x;\theta_{\text{PLM}},W)&=\text{softmax}(h\cdot{W}) \\
&=\text{softmax}\Big(\text{PLM}(x;\theta_\text{PLM})\cdot{W}\Big),
\end{aligned} \\
\text{where }h\in\mathbb{R}^{\text{hidden}\_\text{size}}\text{ and }W\in\mathbb{R}^{\text{hidden}\_\text{size}\times\text{\#classes}}.
\end{gathered}$$

## Evaluations

$$\begin{gathered}
\mathcal{D}=\{(x_i,s_i,e_i)\}_{i=1}^N, \\
\text{where }x_i\text{ is input and }s_i\text{ is start index of span with end index of span }e_i.
\\
\mathcal{L}_\text{span}(\theta_\text{PLM},S,E)=-\sum_{i=1}^N{
    \log{P(s_i|x_i;\theta_\text{PLM},S)}
}-\sum_{i=1}^N{
    \log{P(e_i|x_i;\theta_\text{PLM},E)}
} \\
\\
P(s_i|x_i;\theta_\text{PLM},S)=\frac{\exp(S^\intercal\cdot{h_i})}{\sum_{j=1}^\ell{
    \exp(S^\intercal\cdot{h_j})
}} \\
P(e_i|x_i;\theta_\text{PLM},E)=\frac{\exp(E^\intercal\cdot{h_i})}{\sum_{j=1}^\ell{
    \exp(E^\intercal\cdot{h_j})
}}
\end{gathered}$$

## Wrap-up
