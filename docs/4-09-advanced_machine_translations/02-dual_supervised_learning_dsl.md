---
layout: default
title: Dual Supervised Learning
parent: Adv. Topics on Machine Translations
nav_order: 4-09-02
---

# Dual Supervised Learning \(DSL\)

## Equations

$$
P(\text{y}|\text{x})=\frac{P(\text{x}|\text{y})P(\text{y})}{P(\text{x})}
$$

$$
\mathcal{B}=\{x^n,y^n\}_{n=1}^N
$$

$$\begin{gathered}
P(y^n|x^n)P(x^n)=P(x^n|y^n)P(y^n) \\
\log{P(y^n|x^n)}+\log{P(x^n)}=\log{P(x^n|y^n)}+\log{P(y^n)} \\
\end{gathered}$$

$$\begin{gathered}
\hat{\theta}_{x\rightarrow{y}}=\underset{\theta_{x\rightarrow{y}}\in\Theta}{\text{argmin}}{
    \sum_{i=1}^N{
        \ell\big(
            f(x^i;\theta_{x\rightarrow{y}}),y^i)
        \big)
    }
} \\
\hat{\theta}_{y\rightarrow{x}}=\underset{\theta_{y\rightarrow{x}}\in\Theta}{\text{argmin}}{
    \sum_{i=1}^N{
        \ell\big(
            f(y^i;\theta_{y\rightarrow{x}}),x^i)
        \big)
    }
} \\
\text{s.t. }P(y^i|x^i)P(x^i)=P(x^i|y^i)P(y^i).
\end{gathered}$$

$$\begin{gathered}
\mathcal{L}(\theta_{x\rightarrow{y}})=\sum_{i=1}^N{
    \Big(
        \ell\big(
            f(x^i;\theta_{x\rightarrow{y}}),y^i
        \big)
        +\lambda\mathcal{L}_\text{dual}(x^i,y^i;\theta_{x\rightarrow{y}},\theta_{y\rightarrow{x}})
    \Big)
} \\
\mathcal{L}(\theta_{y\rightarrow{x}})=\sum_{i=1}^N{
    \Big(
        \ell\big(
            f(y^i;\theta_{y\rightarrow{x}}),x^i
        \big)
        +\lambda\mathcal{L}_\text{dual}(x^i,y^i;\theta_{x\rightarrow{y}},\theta_{y\rightarrow{x}})
    \Big)
} \\
\text{where }\mathcal{L}_\text{dual}(x^i,y^i;\theta_{x\rightarrow{y}},\theta_{y\rightarrow{x}})=\Big\|
    \big(
        \log{P(y^i|x^i;\theta_{x\rightarrow{y}})+\log{\hat{P}(x^i)}}
    \big)-\big(
        \log{P(x^i|y^i;\theta_{y\rightarrow{x}})+\log{\hat{P}(y^i)}}
    \big)
\Big\|_2^2.
\end{gathered}$$

$$
\nabla_{\theta_{x\rightarrow{y}}}\mathcal{L}_\text{dual}(x^i,y^i;\theta_{x\rightarrow{y}},\theta_{y\rightarrow{x}})=\nabla_{\theta_{x\rightarrow{y}}}\Big\|
    \big(
        \log{P(y^i|x^i;\theta_{x\rightarrow{y}})+\log{\hat{P}(x^i)}}
    \big)-\big(
        \log{P(x^i|y^i;\theta_{y\rightarrow{x}})+\log{\hat{P}(y^i)}}
    \big)
\Big\|_2^2.
$$

## Evaluations
