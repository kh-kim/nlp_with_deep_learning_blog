---
layout: default
title: Dual Unsupervised Learning
parent: Adv. Topics on Machine Translations
nav_order: 4-09-11
---

# Dual Unsupervised Learning \(DUL\)

## Equations

$$\begin{gathered}
\mathcal{B}=\{x^n,y^n\}_{n=1}^N \\
\mathcal{M}=\{y^s\}_{s=1}^S
\end{gathered}$$

$$\begin{aligned}
P(y)&=\mathbb{E}_{x\sim{P(\text{x})}}[P(y|x)] \\
&=\sum_{x\in\mathcal{X}}P(y|x)P(x) \\
\end{aligned}$$

### Importance Sampling

$$\begin{aligned}
\mathbb{E}_{x\sim{p(\text{x})}}\big[f(x)\big]
&=\int{f(x)p(x)}dx \\
&=\int{\frac{f(x)p(x)}{q(x)}q(x)}dx \\
&=\mathbb{E}_{x\sim{p(\text{x})}}\Big[
    f(x)\frac{p(x)}{q(x)}
\Big]
\end{aligned}$$

#### Intuition

$$\begin{aligned}
P(y)&=\mathbb{E}_{x\sim{P(\text{x})}}[P(y|x)] \\
&=\sum_{x\in\mathcal{X}}P(y|x)P(x) \\
&=\sum_{x\in\mathcal{X}}\frac{P(y|x)P(x)}{P(x|y)}P(x|y) \\
&=\mathbb{E}_{x\sim{P(\text{x}|y)}}\Big[\frac{P(y|x)P(x)}{P(x|y)}\Big] \\
&\approx\frac{1}{K}\sum_{k=1}^K{
    \frac{P(y|x_k)P(x_k)}{P(x_k|y)}
}\text{, where }x_k\sim{P(\text{x}|y)}
\end{aligned}$$

$$\begin{gathered}
\mathcal{L}(\theta_{x\rightarrow{y}})=-\sum_{n=1}^N{
    \log{P(y^n|x^n;\theta_{x\rightarrow{y}})}
}+\lambda\mathcal{L}_\text{dul}(\theta_{x\rightarrow{y}}) \\
\mathcal{L}_\text{dul}(\theta_{x\rightarrow{y}})=\sum_{s=1}^S{
    \Big\|
        \log{\hat{P}(y^s)}-\log{
            \frac{1}{K}\sum_{k=1}^K{
                \frac{P(y^s|x_k^s;\theta_{x\rightarrow{y}})\hat{P}(x_k^s)}{P(x_k^s|y^s;\theta_{y\rightarrow{x}})}
            }
        }
    \Big\|_2^2
}
\end{gathered}$$

$$
\theta_{x\rightarrow{y}}=\theta_{x\rightarrow{y}}-\eta\nabla_{\theta_{x\rightarrow{y}}}\mathcal{L}(\theta_{x\rightarrow{y}})
$$

## Evaluations
