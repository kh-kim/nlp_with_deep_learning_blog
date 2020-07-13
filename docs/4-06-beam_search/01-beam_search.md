---
layout: default
title: Introduction to Beam Search
parent: Beam Search
nav_order: 4-06-01
---

# Beam Search 소개

$$\begin{gathered}
\hat{y}=\underset{y\in\mathcal{Y}}{\text{argmax}}\log{P(y|x;\theta)}, \\
\text{where }\log{P(y|x;\theta)}=\sum_{t=1}^n{\log{P(y_t|x,y_{<t};\theta)}}\text{ and }y=\{y_1,\cdots,y_n\}.
\end{gathered}$$
