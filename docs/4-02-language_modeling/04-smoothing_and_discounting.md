---
layout: default
title: Smoothing and Discounting
parent: Language Modeling
nav_order: 4-02-04
---

# Smoothing and Discounting

## Add One Smoothing

$$\begin{gathered}
\begin{aligned}
P(w_t|w_{<t})&\approx\frac{\text{C}(w_{1:t})}{\text{C}(w_{1:t-1})} \\
&\approx\frac{\text{C}(w_{1:t})+1}{\text{C}(w_{1:t-1})+|V|},
\end{aligned} \\
\text{where }|V|\text{ is a size of vocabulary.}
\end{gathered}$$

if we generalize this,

$$\begin{gathered}
\begin{aligned}
P(w_t|w_{<t})&\approx\frac{\text{C}(w_{1:t})}{\text{C}(w_{1:t-1})} \\
&\approx\frac{\text{C}(w_{1:t})+1}{\text{C}(w_{1:t-1})+|V|} \\
&\approx\frac{\text{C}(w_{1:t})+k}{\text{C}(w_{1:t-1})+k\times|V|} \\
&\approx\frac{\text{C}(w_{1:t})+\frac{m}{|V|}}{\text{C}(w_{1:t-1})+m},
\end{aligned} \\
\text{where }|V|\text{ is a size of vocabulary.}
\end{gathered}$$

if we more generalize this,

$$\begin{gathered}
P(w_t|w_{<t})\approx\frac{\text{C}(w_{1:t})+1}{\text{C}(w_{1:t-1})+|V|}, \\
\text{where }|V|\text{ is a size of vocabulary.}
\end{gathered}$$