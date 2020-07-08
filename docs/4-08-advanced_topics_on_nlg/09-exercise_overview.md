---
layout: default
title: Exercise Briefing
parent: Adv. Topics on NLG
nav_order: 4-08-09
---

# 실습: 실습 소개

## Equations

$$
\mathcal{D}=\{x^i,y^i\}_{i=1}^N
$$

$$\begin{gathered}
\nabla_\theta\mathcal{L}(\theta)=\nabla_\theta\Big(
    \sum_{i=1}^N{
        \log{P(\hat{y}_0^i|x^i;\theta)\times\big(
            \Delta(\hat{y}_0^i,y^i)-\frac{1}{K}\sum_{k=1}^K{
                \Delta(\hat{y}_k^i,y^i)
            }
        \big)}
    }
\Big), \\
\text{where }\hat{y}^i\sim{P(\cdot|x^i;\theta)}\text{ and }\Delta(\hat{y},y)=-\text{BLEU}(\hat{y},y).
\end{gathered}$$

$$
\theta\leftarrow\theta-\eta\nabla_\theta\mathcal{L}(\theta)
$$
