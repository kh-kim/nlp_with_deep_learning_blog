---
layout: default
title: Exercise Briefing
parent: Practical Exercises
nav_order: 1-15-03
---

# 실습 소개

$$\begin{gathered}
\mathcal{D}=\{(x_i, y_i)\}_{i=1}^N \\
\text{where }x\in[0,1]^{N\times28\times28}\text{ and }y\in\{0,1\}^{N\times10}. \\
\\
\log{P_\theta(\cdot|x_i)}=\hat{y}_i=f_\theta(x_i) \\
\\
\begin{aligned}
\mathcal{L}(\theta)&=-\frac{1}{N}\sum_{i=1}^N{
    \log{P(\text{y}=y_i|\text{x}=x_i;\theta)}
} \\
&=-\frac{1}{N}\sum_{i=1}^N{
    y_i^\intercal\cdot\hat{y}_i
}
\end{aligned} \\
\\
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmin}}\mathcal{L}(\theta) \\
\\
\theta\leftarrow\theta-\eta\cdot\frac{\partial\mathcal{L}(\theta)}{\partial{\theta}}
\end{gathered}$$
