---
layout: default
title: Exercise Briefing
parent: Adv. Topics on Machine Translations
nav_order: 4-09-03
---

# 실습: 실습 소개

## Equations

$$\begin{gathered}
\mathcal{D}=\{(x_i,y_i)\}_{i=1}^N \\
\\
\hat{\phi}=\underset{\phi\in\Phi}{\text{argmax}}\sum_{i=1}^N{
    \log{P(x_i;\phi)}
} \\
\hat{\psi}=\underset{\psi\in\Psi}{\text{argmax}}\sum_{i=1}^N{
    \log{P(y_i;\psi)}
} \\
\end{gathered}$$

$$\begin{gathered}
\theta_{x\rightarrow{y}}\leftarrow\theta_{x\rightarrow{y}}-\eta\nabla_{\theta_{x\rightarrow{y}}}\mathcal{L}(\theta_{x\rightarrow{y}}) \\
\mathcal{L}(\theta_{x\rightarrow{y}})=-\sum_{i=1}^N{
    \bigg(
        \log{P(y_i|x_i;\theta_{x\rightarrow{y}})}
        -\lambda\times\Big(
            \big(
                \log{P(x_i;\phi)}+\log{P(y_i|x_i;\theta_{x\rightarrow{y}})}
            \big)
            -\big(
                \log{P(y_i;\psi)}+\log{P(x_i|y_i;\theta_{y\rightarrow{x}})}
            \big)
        \Big)^2
    \bigg)
} \\
\\
\theta_{y\rightarrow{x}}\leftarrow\theta_{y\rightarrow{x}}-\eta\nabla_{\theta_{y\rightarrow{x}}}\mathcal{L}(\theta_{y\rightarrow{x}}) \\
\mathcal{L}(\theta_{y\rightarrow{x}})=-\sum_{i=1}^N{
    \bigg(
        \log{P(x_i|y_i;\theta_{y\rightarrow{x}})}
        -\lambda\times\Big(
            \big(
                \log{P(x_i;\phi)}+\log{P(y_i|x_i;\theta_{x\rightarrow{y}})}
            \big)
            -\big(
                \log{P(y_i;\psi)}+\log{P(x_i|y_i;\theta_{y\rightarrow{x}})}
            \big)
        \Big)^2
    \bigg)
}
\end{gathered}$$

$$\begin{gathered}
\begin{aligned}
\log{P(y_i|x_i;\theta_{x\rightarrow{y}})}&=\sum_{t=1}^m{
    \log{P(y_{i,t}|x_i,y_{i,<t};\theta_{x\rightarrow{y}})}
} \\
&=\sum_{t=1}^m{
    y_{i,t}^{\intercal}\cdot\log{\hat{y}_{i,t}}
}
\end{aligned} \\
\\
\begin{aligned}
\log{P(x_i|y_i;\theta_{y\rightarrow{x}})}&=\sum_{t=1}^n{
    \log{P(x_{i,t}|y_i,x_{i,<t};\theta_{y\rightarrow{x}})}
} \\
&=\sum_{t=1}^n{
    x_{i,t}^\intercal\cdot\log{\hat{x}_{i,t}}
}
\end{aligned} \\
\text{where }x_{i,0}=y_{i,0}=\text{<BOS> and }x_{i,n}=y_{i,m}=\text{<EOS>.}
\end{gathered}$$
