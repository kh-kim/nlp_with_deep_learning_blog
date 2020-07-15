---
layout: default
title: Policy Gradients
parent: Adv. Topics on NLG
nav_order: 4-08-06
---

# Policy Gradients

- Useful link: https://lilianweng.github.io/lil-log/2018/04/08/policy-gradient-algorithms.html

## Useful Trick

$$\begin{aligned}
\nabla_\theta{P(x;\theta)}&={P(x;\theta)}\frac{\nabla_\theta{P(x;\theta)}}{{P(x;\theta)}} \\
&={P(x;\theta)}\nabla_\theta\log{{P(x;\theta)}}
\end{aligned}$$

$$
\nabla_\theta\log{{P(x;\theta)}}=\frac{\nabla_\theta{P(x;\theta)}}{{P(x;\theta)}}
$$

## Policy Gradient Theorem

$$\begin{aligned}
J(\theta)&=\mathbb{E}_{\pi_\theta}[r]=v_\theta(s_0) \\
&=\sum_{s\in\mathcal{S}}{
    d(s)\sum_{a\in\mathcal{A}}{
        \pi_\theta(s,a)\mathcal{R}_{s,a}
    }
}
\end{aligned}$$

$$
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmax }}J(\theta)
$$

$$
\theta_{t+1}=\theta_t+\eta\nabla_\theta{J(\theta)}
$$

by Policy Gradient Theorem,

$$
\nabla_\theta{J(\theta)}\approx\mathbb{E}_{\pi_\theta}\big[
    \nabla_\theta{\log{\pi_\theta(a|s)}}Q_{\pi_\theta}(s,a)
\big]
$$

$$
\theta\leftarrow\theta+\eta\sum_{s\in\mathcal{S}}{
    \sum_{a\in\mathcal{A}}{
        Q_{\pi_\theta}(s,a)\nabla_\theta\log{\pi_\theta(a|s)}
    }
}
$$

## REINFORCE

> Given policy $\pi_\theta(a|s)$, <br>
> For each episode: <br>
> Generate an episode $s_0,a_0,r_1,\cdots,s_{T-1},a_{T-1},r_T$ from $\pi_\theta$. <br>
> Loop: update $\theta$ for each step of the episode $t=0,1,\cdots,T-1$:
> $$\begin{aligned}
G&\leftarrow\sum_{k=t+1}^T{
    \gamma^{k-t-1}r_k
} \\
\theta&\leftarrow\theta+\eta\gamma^tG\nabla_\theta{\log{\pi_\theta(a_t|s_t)}}
\end{aligned}$$

## REINFORCE with Baseline

> Given policy $\pi_\theta(a|s)$ and value function $v_\phi$(s), <br>
> For each episode: <br>
> Generate an episode $s_0,a_0,r_1,\cdots,s_{T-1},a_{T-1},r_T$ from $\pi_\theta$. <br>
> Loop: update $\theta$ and $\phi$ for each step of the episode $t=0,1,\cdots,T-1$:
> $$\begin{aligned}
G&\leftarrow\sum_{k=t+1}^T{
    \gamma^{k-t-1}r_k
} \\
\delta&\leftarrow{G}-v_\phi(s_t) \\
\phi&\leftarrow\phi+\eta^\phi\gamma^t\delta\nabla_\phi{v_\phi(s_t)} \\
\theta&\leftarrow\theta+\eta^\theta\gamma^t\delta\nabla_\theta{\log{\pi_\theta(a_t|s_t)}}
\end{aligned}$$

<!--
## Actor Critic

$$
\theta\leftarrow\theta+\eta{Q_{\pi_\theta}(s_t,a_t)}\nabla_\theta{\log{\pi_\theta}(a_t|s_t)}
$$

$$
\theta\leftarrow\theta+\eta\big(
    Q_{\pi_\theta}(s_t,a_t;\psi)-v_{\pi_\theta}(s_t;\phi)
\big)\nabla_\theta{\log{\pi_\theta}(a_t|s_t)}
$$

$$
\theta\leftarrow\theta+\eta\big(
    r_{t+1}+\gamma{v_{\pi_\theta}(s_{t+1};\phi)}-v_{\pi_\theta}(s_t;\phi)
\big)\nabla_\theta{\log{\pi_\theta}(a_t|s_t)}
$$
-->

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
\theta&\leftarrow\theta-\eta\nabla_\theta\mathcal{L}(\theta) \\
&=\theta+\eta\sum_{i=1}^N{
    \nabla_\theta\log{P(y^i|x^i;\theta)}
} \\
&=\theta+\eta\sum_{i=1}^N{
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
\theta&\leftarrow\theta+\eta\nabla_\theta{J(\theta)} \\
&\approx\theta+\eta\sum_{s\in\mathcal{S}}{
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

