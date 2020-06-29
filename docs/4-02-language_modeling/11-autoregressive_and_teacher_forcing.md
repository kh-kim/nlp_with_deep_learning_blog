---
layout: default
title: Autoregressive and Teacher Forcing
parent: Language Modeling
nav_order: 4-02-11
---

# Autoregressive and Teacher Forcing

## Inference

$$
\hat{x}_t=\underset{x_t\in\mathcal{X}}{\text{argmax}}\log{P(x_t|\hat{x}_{<t};\theta)}
$$

### Auto-regressive

$$\begin{aligned}
\hat{x}_{t=1}&=\underset{x_t\in\mathcal{X}}{\text{argmax}}\log{P(x_{t=1}|x_0;\theta)}\text{ where }x_0=\text{<BOS>}. \\
\hat{x}_{t=2}&=\underset{x_t\in\mathcal{X}}{\text{argmax}}\log{P(x_{t=2}|x_0,\hat{x}_1;\theta)} \\
\hat{x}_{t=3}&=\underset{x_t\in\mathcal{X}}{\text{argmax}}\log{P(x_{t=3}|x_0,\hat{x}_1,\hat{x}_2;\theta)} \\
&\cdots \\
\hat{x}_t&=\underset{x_t\in\mathcal{X}}{\text{argmax}}\log{P(x_t|x_0,\hat{x}_{<t};\theta)} \\
\end{aligned}$$

## Training with MLE

$$\begin{gathered}
\mathcal{D}=\{x^i\}_{i=1}^N \\
\begin{aligned}
\hat{\theta}&=\underset{\theta\in\Theta}{\text{argmax}}\sum_{i=1}^N{\log{P(x^i;\theta)}} \\
&=\underset{\theta\in\Theta}{\text{argmax}}\sum_{i=1}^N{\sum_{j=1}^n{\log{P(x_j^i|x_{<j}^i;\theta)}}},
\end{aligned} \\
\text{where }x^i=x_{1:n}^i=\{x_1^i,\cdots,x_n^i\}.
\end{gathered}$$
