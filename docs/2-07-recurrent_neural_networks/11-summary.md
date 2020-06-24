---
layout: default
title: Wrap-up
parent: Recurrent Neural Networks
nav_order: 11
---

# 정리하며

$$\begin{aligned}
\log{P(x)}&=\log{\sum_{y}{P(x,y)}} \\
&=\log\sum_{y}\int{P(x,y,z)}dz \\
&=\log\sum_{y}\int{P(x|y,z)P(y|z)P(z)}dz \\
&=\log\sum_{y}\int{P(x|y,z)P(y|z)\frac{P(z)}{P(z|x,y)}P(z|x,y)}dz \\
&\ge\sum_{y}\int{P(z|x,y)\log{P(x|y,z)P(y|z)\frac{P(z)}{P(z|x,y)}}}dz \\
&=\sum_{y}{
    \mathbb{E}_{\text{z}\sim{P(z|x,y)}}[\log{P(x|y,\text{z})}]
    +\mathbb{E}_{\text{z}\sim{P(z|x,y)}}[\log{P(y|\text{z})}]
    -\text{KL}(P(\text{z}|x,y)||P(\text{z}))
}
\end{aligned}$$
