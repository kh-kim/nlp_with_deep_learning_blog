---
layout: default
title: Policy Gradients
parent: Adv. Topics on NLG
nav_order: 4-08-06
---

# Policy Gradients

$$\begin{gathered}
\begin{aligned}
\nabla_\theta\pi_\theta(a|s)&=\pi_\theta(a|s)\frac{\nabla_\theta\pi_\theta(a|s)}{\pi_\theta(a|s)} \\
&=\pi_\theta(a|s)\nabla_\theta\log{\pi_\theta(a|s)}
\end{aligned} \\
\\
\nabla_\theta\log{\pi_\theta(a|s)}=\frac{\nabla_\theta\pi_\theta(a|s)}{\pi_\theta(a|s)} \\
\end{gathered}$$

## REINFORCE

## REINFORCE with Baseline

## Actor Critic

## PG vs MLE

$$\begin{gathered}
\mathcal{D}=\{x^i,y^i\}_{i=1}^N \\
\\
\hat{y}^i=\underset{y\in\mathcal{Y}}{\text{argmax}}P(y|x^i;\theta)
\end{gathered}$$

$$\begin{gathered}
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmax}}\sum_{i=1}^N{
    \log{P(y^i|x^i;\theta)}
}
\\
\mathcal{L}(\theta)=-\sum_{i=1}^N{
    \log{P(y^i|x^i;\theta)}
} \\
\\
\begin{aligned}
\theta&\leftarrow\theta-\alpha\nabla_\theta\mathcal{L}(\theta) \\
&=\theta+\alpha\sum_{i=1}^N{
    \nabla_\theta\log{P(y^i|x^i;\theta)}
} \\
&=\theta+\alpha\sum_{i=1}^N{
    \sum_{t=1}^n{
        \nabla_\theta\log{P(y_t^i|x^i,y_{<t}^i;\theta)}
    }
}
\end{aligned} \\
\end{gathered}$$

$$\begin{gathered}
\nabla_\theta{J(\theta)}=\mathbb{E}_{a,s\sim\pi_\theta}\big[
    \nabla_\theta\log{\pi_\theta(a|s)\cdot{Q_{\pi_\theta}(s,a)}}
\big] \\
\\
\begin{aligned}
\theta&\leftarrow\theta+\alpha\nabla_\theta{J(\theta)} \\
&\approx\theta+\alpha\sum_{s\in\mathcal{S}}{
    \sum_{a\in\mathcal{A}}{
        Q_{\pi_\theta}(s,a)\nabla_\theta\log{\pi_\theta(a|s)}
    }
}
\end{aligned}
\end{gathered}$$

## NLG with RL

- State
- Action
- Reward

