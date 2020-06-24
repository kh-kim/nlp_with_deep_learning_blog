---
layout: default
title: Appendix - MSE Loss
parent: Probabilistic Perspective
nav_order: 09
---

# Appendix: MSE Loss

## Gaussian PDF

$$\begin{gathered}
p(x;\mu,\sigma)=\frac{1}{\sigma\sqrt{2\pi}}e^{-\frac{1}{2}\big(\frac{x-\mu}{\sigma}\big)^2} \\
\\
\log{p(x;\mu,\sigma)}=-\log{\sigma\sqrt{2\pi}}-\frac{1}{2}\big(\frac{x-\mu}{\sigma}\big)^2 \\
\\
-\log{p(x;\mu,\sigma)}=\log{\sigma\sqrt{2\pi}}+\frac{1}{2}\big(\frac{x-\mu}{\sigma}\big)^2
\end{gathered}$$

## MLE with Gradient Descent

$$\begin{gathered}
\mathcal{D}=\{(x_i,y_i)\}_{i=1}^N \\
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmax }}\sum_{i=1}^N\log{p(y_i|x_i;\theta)} \\
\\
\mathcal{L}(\theta)=-\sum_{i=1}^N{\log{p(y_i|x_i;\theta)}} \\
\theta\leftarrow\theta-\alpha\nabla_\theta\mathcal{L}(\theta) \\
\end{gathered}$$

## Consider as Gaussian

$$\begin{gathered}
-\log{p(y_i|x_i;\phi,\psi)}=\log{\sigma_\psi(x_i)\sqrt{2\pi}}+\frac{1}{2}\big(\frac{y_i-\mu_\phi(x_i)}{\sigma_\psi(x_i)}\big)^2\text{, where }\theta=\{\phi,\psi\}. \\
\\
\begin{aligned}
-\nabla_\phi\log{p(y_i|x_i;\phi,\psi)}&=\nabla_\phi\log{\sigma_\psi(x_i)\sqrt{2\pi}}+\nabla_\phi\frac{1}{2}\big(\frac{y_i-\mu_\phi(x_i)}{\sigma_\psi(x_i)}\big)^2 \\
&=\frac{1}{2\cdot\sigma_\psi(x_i)^2}\nabla_\phi\big(y_i-\mu_\phi(x_i)\big)^2 \\
&=\alpha\cdot\nabla_\phi\big(y_i-\mu_\phi(x_i)\big)^2\text{, where }\alpha=\frac{1}{2\cdot\sigma_\psi(x_i)^2}.
\end{aligned}
\end{gathered}$$