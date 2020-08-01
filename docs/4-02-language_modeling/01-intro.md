---
layout: default
title: Introduction to Language Modeling
parent: Language Modeling
nav_order: 4-02-01
---

# 들어가며

## Applications

### Automatic Speech Recognition (ASR)

$$\begin{gathered}
y_{1:n}=\text{argmax }P(\text{y}|x;\theta) \\
\text{where }x\text{ is audio signal, and }y_{1:n}\text{ is word sequence, }y_{1:n}=\{y_1,y_2,\cdots,y_n\}.
\end{gathered}$$

$$\begin{aligned}
\hat{y}&={\underset{y\in\mathcal{Y}}{\text{argmax}}}P(y|x) \\
&={\underset{y\in\mathcal{Y}}{\text{argmax}}}\frac{P(x|y)P(y)}{P(x)} \\
&={\underset{y\in\mathcal{Y}}{\text{argmax}}}P(x|y)P(y)
\end{aligned}$$
