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
\end{aligned}$$

### Jensen's Inequality

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
}-\sum_{s=1}^S{\Bigg(
    \frac{1}{K}\sum_{k=1}^K{
        \log{P(y^s|x_k^s;\theta_{x\rightarrow{y}})}
    }-\text{KL}\big(
        P(\text{x}|y^s;\theta_{y\rightarrow{x}})|P(\text{x})
    \big)
}\Bigg)\text{, where }x_k^s\sim{P(\text{x}|y^s;\theta_{y\rightarrow{x}})} \\
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
\theta_{x\rightarrow{y}}\leftarrow\theta_{x\rightarrow{y}}-\eta\nabla_{\theta_{x\rightarrow{y}}}\tilde{\mathcal{L}}(\theta_{x\rightarrow{y}})
$$

## Evaluations

$$\begin{aligned}
\log{P(y)}&=\log{\sum_{c}{\sum_{x}{P(x,y,c)}}} \\
&=\log{\sum_{c}{\sum_{x}{P(y|x,c)P(x|c)P(c)}}} \\
&=\log{\sum_{c}{\sum_{x}{
    \frac{P(y|x,c)P(x|c)}{P(x|y,c)}P(x|y,c)P(c)
}}} \\
&\ge\sum_{c}{\sum_{x}}P(c)P(x|y,c)\log{\frac{P(y|x,c)P(x|c)}{P(x|y,c)}} \\
&=\mathbb{E}_{c\sim{P(\text{c})}}\Big[
    \mathbb{E}_{x\sim{P(\text{x}|y,c)}}\big[
        \log{P(y|x,c)}
    \big]
    -\text{KL}(P(\text{x}|y,c)\|P(\text{x}|c))
\Big]
\end{aligned}$$

$$\begin{aligned}
\log{P(y)}&=\log{\sum_{c}{\sum_{x}{P(x,y,c)}}} \\
&=\log{\sum_{c}{\sum_{x}{P(y|x,c)P(c|x)P(x)}}} \\
&=\log{\sum_{c}{\sum_{x}{
    \frac{P(y|x,c)P(c|x)P(x)}{P(c)P(x|y,c)}P(x|y,c)P(c)
}}} \\
&\ge\sum_{c}{\sum_{x}}P(c)P(x|y,c)\log{\frac{P(y|x,c)P(c|x)P(x)}{P(c)P(x|y,c)}} \\
&=\mathbb{E}_{c\sim{P(\text{c})},x\sim{P(\text{x}|y,c)}}\Big[\log{P(y|x,c)}+\log{\frac{P(c|x)}{P(c)}+\log{\frac{P(x)}{P(x|y,c)}}}\Big]
\end{aligned}$$