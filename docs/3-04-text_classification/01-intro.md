---
layout: default
title: Introduction to Text Classification
parent: Text Classification
nav_order: 01
---

# 들어가며

## Problem Definition in Probabilistic Perspective

$$
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmax}}\text{ }\mathbb{E}_{
    \text{x}\sim{P(\text{x})}
}\Big[
    \mathbb{E}_{
        \text{y}\sim{P(\text{y}|\text{x})}
    }\big[
        \log{P(\text{y}|\text{x};\theta)}
    \big]
\Big]
$$

## MLE

$$\begin{gathered}
\mathcal{D}=\{(x_i, y_i)\}_{i=1}^N \\
\\
\begin{aligned}
\hat{\theta}&=\underset{\theta\in\Theta}{\text{argmax}}\sum_{i=1}^N{\log{P(y_i|x_i;\theta)}} \\
&=\underset{\theta\in\Theta}{\text{argmin}}-\sum_{i=1}^N{\log{P(y_i|x_i;\theta)}}
\end{aligned}
\\
\\
\mathcal{L}(\theta)=-\sum_{i=1}^N{\log{P(y_i|x_i;\theta)}} \\
\theta\leftarrow\theta-\alpha\nabla_\theta{\mathcal{L}(\theta)}
\end{gathered}$$
