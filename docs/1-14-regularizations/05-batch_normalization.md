---
layout: default
title: Batch Normalizations
parent: Regularizations
nav_order: 1-14-05
---

# Batch Normalization

$$\begin{gathered}
\text{batch}\_\text{norm}(x)=\gamma\frac{(x-\mu)}{\sqrt{\sigma^2+\epsilon}}+\beta \\
\\
\mu=x.\text{mean}(\text{dim}=0) \\
\sigma=x.\text{std}(\text{dim}=0)
\end{gathered}$$
