---
layout: default
title: LSTM
parent: Recurrent Neural Networks
nav_order: 06
---

# LSTM

$$
\begin{aligned}
i_t&=\sigma(W_i\cdot[x_t, h_{t-1}]) \\
f_t&=\sigma(W_f\cdot[x_t, h_{t-1}]) \\
\end{aligned}
$$
