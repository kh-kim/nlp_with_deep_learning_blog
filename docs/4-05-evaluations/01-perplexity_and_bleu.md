---
layout: default
title: Perplexity vs BLEU
parent: Evaluations
nav_order: 4-05-01
---

# Perplexity and BLEU

## Perplexity

$$\begin{aligned}
\text{PPL}(w_{1:n})&=P(w_{1:n})^{-\frac{1}{n}} \\
&=\sqrt[n]{\prod_{i=1}^n\frac{1}{P(w_i|w_{<i})}}
\end{aligned}$$

$$\log\text{PPL}(w_{1:n})\approx-\frac{1}{n}\sum_{i=1}^n{\log{P(w_i|w_{<i};\theta)}}$$

Minimizing PPL during the training is same as minimizing likelihood.

## Motivation

PPL shows likelihood, but likelihood is currupted by teacher forcing.

## BLEU

$$\begin{gathered}
\text{BLEU}(\hat{y},y)=\text{brevity}\_\text{penalty}(\hat{y},y)\times\prod_{n=1}^N{p_n^{w_n}}, \\
\\
\text{where }\text{brevity}\_\text{penalty}(\hat{y},y)=\min\Big(
    1,\frac{|\hat{y}|}{|y|}
\Big) \\
\text{and }p_n^{w_n}\text{ is precision of }n\text{-gram with weight }w_n=\frac{1}{2^n}.
\end{gathered}$$
