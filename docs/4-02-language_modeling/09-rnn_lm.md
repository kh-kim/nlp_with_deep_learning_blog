---
layout: default
title: RNN LM
parent: Language Modeling
nav_order: 4-02-09
---

# RNN을 활용한 LM

$$\begin{gathered}
\mathcal{D}=\{x^i\}_{i=1}^N \\
\begin{aligned}
\hat{\theta}&=\underset{\theta\in\Theta}{\text{argmax}}\sum_{i=1}^N{\log{P(x^i;\theta)}} \\
&=\underset{\theta\in\Theta}{\text{argmax}}\sum_{i=1}^N{\sum_{j=1}^n{\log{P(x^i_{j}|x_{<j}^i;\theta)}}} \\
\end{aligned} \\
\end{gathered}$$

$$\begin{gathered}
\mathcal{L}(\theta)=-\sum_{i=1}^N{\sum_{j=1}^n{\log{P(x^i_{j}|x_{<j}^i;\theta)}}} \\
\theta\leftarrow\theta-\alpha\nabla_{\theta}\mathcal{L(\theta)} \\
\end{gathered}$$

$$\begin{gathered}
\log{P(x_t|x_{<t};\theta)}=x_t^T\cdot\log{f_\theta(x_{t-1},h_{t-1})}, \\
\text{where }x_t\text{ is one-hot vector, and }f_\theta\text{ is model with parameter }\theta. \\
\\
\begin{aligned}
f(x_{t-1},h_{t-1})&=\text{softmax}(\text{RNN}(\text{emb}(x_{t-1}),h_{t-1})\cdot{W})\text{, where }W\in\mathbb{R}^{\text{hidden\_size}\times|V|} \\
&=\text{softmax}(h_t\cdot{W})\text{, where }h_t\in\mathbb{R}^{\text{batch\_size}\times\text{hidden\_size}} \\
&=\hat{x}_t
\end{aligned} \\
\text{where }\hat{x}_t\text{ is a probability distribution that }P(\cdot|x_{<t};\theta).
\end{gathered}$$