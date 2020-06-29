---
layout: default
title: Introduction to Sequence to Sequence
parent: Sequence to Sequence
nav_order: 02
---

# Sequence-to-Sequence

$$\begin{gathered}
\mathcal{D}=\{x^i,y^i\}_{i=1}^N \\
x^i=\{x^i_1,\cdots,x^i_m\}\text{ and }y^i=\{y_0^i,y_1^i,\cdots,y_n^i\}, \\
\text{where }y_0=\text{<BOS>}\text{ and }y_n=\text{<EOS>}.
\end{gathered}$$

$$\begin{aligned}
\hat{\theta}&=\underset{\theta\in\Theta}{\text{argmax}}\sum_{i=1}^N{\log{P(y^i|x^i;\theta)}} \\
&=\underset{\theta\in\Theta}{\text{argmax}}\sum_{i=1}^N{\sum_{j=1}^n{\log{P(y^i_{j}|x^i,y_{<j}^i;\theta)}}} \\
\end{aligned}$$

$$\begin{gathered}
\mathcal{L}(\theta)=-\sum_{i=1}^N{\sum_{j=1}^n{\log{P(y^i_{j}|x^i,y_{<j}^i;\theta)}}} \\
\theta\leftarrow\theta-\alpha\nabla_{\theta}\mathcal{L(\theta)} \\
\end{gathered}$$

## Review: Autoencoders
