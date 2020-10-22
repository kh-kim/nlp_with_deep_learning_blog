---
layout: default
title: Back Propagation
parent: Deep Neural Networks I
nav_order: 1-10-02
---

# Back-propagation

## Chain Rule

$$\begin{gathered}
\frac{\partial{y}}{\partial{x}}=\frac{\partial{y}}{\partial{h}}\frac{\partial{h}}{\partial{x}}
\end{gathered}$$

## Chain rule with DNN

$$\begin{gathered}
y=g\circ{f(x)} \\
\downarrow \\
y=g(h) \\
h=f(x) \\
\downarrow \\
\frac{\partial{y}}{\partial{x}}=\frac{\partial{y}}{\partial{h}}\frac{\partial{h}}{\partial{x}}
\end{gathered}$$
