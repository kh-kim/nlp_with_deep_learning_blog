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
    \log{P(y|x)}
\big]-\text{KL}\big(P(\text{x}|y)|P(\text{x})\big)
\end{aligned}$$

$$\begin{aligned}
\mathcal{L}(\theta_{x\rightarrow{y}})
&\le-\sum_{n=1}^N{
    \log{P(y^n|x^n;\theta_{x\rightarrow{y}})}
}-\sum_{s=1}^S{
    \Big(
        \mathbb{E}_{x\sim{P(\text{x}|y;\theta_{y\rightarrow{x}})}}\big[
            \log{P(y^s|x;\theta_{x\rightarrow{y}})}
        \big]-\text{KL}\big(
            P(\text{x}|y^s;\theta_{y\rightarrow{x}})|P(\text{x})
        \big)
    \Big)
} \\
&\approx-\sum_{n=1}^N{
    \log{P(y^n|x^n;\theta_{x\rightarrow{y}})}
}-\frac{1}{K}\sum_{s=1}^S{
    \sum_{k=1}^K{
        \log{P(y^s|x_k^s;\theta_{x\rightarrow{y}})}
    }-\text{KL}\big(
        P(\text{x}|y^s;\theta_{y\rightarrow{x}})|P(\text{x})
    \big)
}\text{, where }x_k^s\sim{P(\text{x}|y^s;\theta_{y\rightarrow{x}})} \\
&=\tilde{\mathcal{L}}(\theta_{x\rightarrow{y}})
\end{aligned}$$

$$\begin{aligned}
\nabla_{\theta_{x\rightarrow{y}}}\tilde{\mathcal{L}}(\theta_{x\rightarrow{y}})
&=-\nabla_{\theta_{x\rightarrow{y}}}\sum_{n=1}^N{
    \log{P(y^n|x^n;\theta_{x\rightarrow{y}})}
}-\nabla_{\theta_{x\rightarrow{y}}}\frac{1}{K}\sum_{s=1}^S{
    \sum_{k=1}^K{
        \log{P(y^s|x_k^s;\theta_{x\rightarrow{y}})}
    }
} \\
&\approx-\nabla_{\theta_{x\rightarrow{y}}}\sum_{n=1}^N{
    \log{P(y^n|x^n;\theta_{x\rightarrow{y}})}
}-\nabla_{\theta_{x\rightarrow{y}}}\sum_{s=1}^S{
    \log{P(y^s|\hat{x}^s;\theta_{x\rightarrow{y}})}
}\text{, where }\hat{x}^s\sim{P(\text{x}|y^s;\theta_{y\rightarrow{x}})}\text{ and }K=1.
\end{aligned}$$

$$
\theta_{x\rightarrow{y}}\leftarrow\theta_{x\rightarrow{y}}-\alpha\nabla_{\theta_{x\rightarrow{y}}}\tilde{\mathcal{L}}(\theta_{x\rightarrow{y}})
$$

## Evaluations

