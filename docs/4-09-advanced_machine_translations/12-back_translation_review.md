---
layout: default
title: Back Translation Review
parent: Adv. Topics on Machine Translations
nav_order: 4-09-12
---

# Back Translation Review

## Equations

$$\begin{gathered}
\mathcal{B}=\{x^n,y^n\}_{n=1}^N \\
\mathcal{M}=\{y^s\}_{s=1}^S
\end{gathered}$$

$$
\mathcal{L}(\theta_{x\rightarrow{y}})=-\sum_{n=1}^N{
    \log{P(y^n|x^n;\theta_{x\rightarrow{y}})}
}-\sum_{s=1}^S{
    \log{P(y^s)}
}
$$

$$\begin{aligned}
\log{P(y)}&=\log{\sum_{x\in\mathcal{X}}{P(x,y)}} \\
&=\log{\sum_{x\in\mathcal{X}}{P(y|x)P(x)}} \\
&=\log{\sum_{x\in\mathcal{X}}{\frac{P(y|x)P(x)}{P(x|y)}P(x|y)}} \\
&\ge\sum_{x\in\mathcal{X}}{
    P(x|y)\log{\frac{P(y|x)P(x)}{P(x|y)}}
} \\
&=\mathbb{E}_{x\sim{P(\text{x}|y)}}\Big[
    \log{\frac{P(y|x)P(x)}{P(x|y)}}
\Big] \\
&=\mathbb{E}_{x\sim{P(\text{x}|y)}}\big[
    
\big]
\end{aligned}$$

## Evaluations

