---
layout: default
title: Penalties
parent: Inference for NLG
nav_order: 4-04-03
---

# Length & Coverage Penalty

## Length Penalty

$$\begin{gathered}
\log{\tilde{P}(\hat{y}_{1:n}|x_{1:m};\theta)}=\log{P(\hat{y}_{1:n}|x_{1:m};\theta)}\times\text{penalty}(n) \\
\text{where }\hat{y}_{1:n}\sim\log{P(\cdot|x_{1:m};\theta)}\text{ and } \\
\text{penalty}(n)=\Big(\frac{1+\beta}{1+n}\Big)^\alpha.
\end{gathered}$$

## Coverage Penalty

$$\begin{gathered}
\log{\tilde{P}(\hat{y}_{1:n}|x_{1:m};\theta)}=\log{P(\hat{y}_{1:n}|x_{1:m};\theta)}\times\text{penalty}_\text{length}(n)+\text{penalty}_\text{coverage}(x_{1:m},\hat{y}_{1:n}) \\
\\
\text{penalty}_\text{coverage}(x_{1:m},\hat{y}_{1:n})=\beta\times{
    \sum_{i=1}^m{
        \log{\big(
            \min(
                \sum_{j=1}^n{
                    w_{i,j}
                }, 1.0
            )
        \big)}
    }
}, \\
\text{where }w_{i,j}=\text{softmax}(h_j^\text{dec}\cdot{W_\text{a}}\cdot{h_i^\text{enc}}^T).
\end{gathered}$$
