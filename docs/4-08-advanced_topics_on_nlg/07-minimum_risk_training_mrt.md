---
layout: default
title: Minimum Risk Training
parent: Adv. Topics on NLG
nav_order: 4-08-07
---

# Minimum Risk Training \(MRT\)

## Equations

$$\begin{gathered}
\mathcal{D}=\{x^i,y^i\}_{i=1}^N \\
\\
\begin{aligned}
\mathcal{R}(\theta)&=\sum_{i=1}^N{
    \mathbb{E}_{\hat{y}\sim{P(\text{y}|x^i;\theta)}}[\Delta(\hat{y},y^i)]
} \\
&=\sum_{i=1}^N{
    \sum_{\hat{y}\in\mathcal{Y}(x^i)}{
        P(\hat{y}|x^i;\theta)\Delta(\hat{y},y^i)
    }
}
\end{aligned} \\
\\
\hat{\theta}_\text{MRT}=\underset{\theta\in\Theta}{\text{argmin }}\mathcal{R}(\theta)
\end{gathered}$$

$$\begin{gathered}
\begin{aligned}
\tilde{\mathcal{R}}(\theta)&=\sum_{i=1}^N{
    \mathbb{E}_{\hat{y}\sim{Q(\text{y}|x^i;\theta,\alpha)}}[
        \Delta(\hat{y},y^i)
    ]
} \\
&=\sum_{i=1}^N{
    \sum_{\hat{y}\in\mathcal{S}(x^i)}{
        Q(\hat{y}|x^i;\theta,\alpha)\Delta(\hat{y},y^i)
    }
}
\end{aligned} \\
\text{where }\mathcal{S}(x^i)\text{ is a sampled subset of the full search space }\mathcal{Y}(x^i), \\
\text{and }Q(\hat{y}|x^i;\theta,\alpha)\text{ is a distribution defined on the subspace }\mathcal{S}(x^i): \\
Q(\hat{y}|x^i;\theta,\alpha)=\frac{P(\hat{y}|x^i;\theta)^\alpha}{\sum_{y'\in\mathcal{S}(x^i)}{
    P(y'|x^i;\theta)^\alpha
}}.
\end{gathered}$$

$$\begin{gathered}
\begin{aligned}
\nabla_\theta\tilde{\mathcal{R}}(\theta)
&=\alpha\sum_{i=1}^N{
    \mathbb{E}_{\hat{y}\sim{P(\text{y}|x^i;\theta)^\alpha}}\Big[
        \frac{\nabla_\theta{P(\hat{y}|x^i;\theta)}}{P(\hat{y}|x^i;\theta)}\times\big(
            \Delta(\hat{y},y^i)-\mathbb{E}_{y'\sim{P(\text{y}|x^i;\theta)^\alpha}}[
                \Delta(y',y^i)
            ]
        \big)
    \Big]
} \\
&=\alpha\sum_{i=1}^N{
    \mathbb{E}_{\hat{y}\sim{P(\text{y}|x^i;\theta)^\alpha}}\Big[
        \nabla_\theta\log{P(\hat{y}|x^i;\theta)}\times\big(
            \Delta(\hat{y},y^i)-\mathbb{E}_{y'\sim{P(\text{y}|x^i;\theta)^\alpha}}[
                \Delta(y',y^i)
            ]
        \big)
    \Big]
} \\
&\approx\alpha\sum_{i=1}^N{
    \nabla_\theta\log{P(\hat{y}|x^i;\theta)\times\big(
        \Delta(\hat{y},y^i)-\frac{1}{K}\sum_{k=1}^K{
            \Delta(y^k,y^i)
        }
    \big)}
}\text{, where }\hat{y}\sim{P(\text{y}|x^i;\theta)^\alpha}.
\end{aligned} \\
\\
\theta\leftarrow\theta-\eta\nabla_\theta{\tilde{\mathcal{R}}(\theta)}
\end{gathered}$$

## Evaluations
