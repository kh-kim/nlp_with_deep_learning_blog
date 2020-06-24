---
layout: default
title: LSTM
parent: Recurrent Neural Networks
nav_order: 06
---

# LSTM

$$
\begin{aligned}
i_t&=\sigma(W_i\cdot(x_t, h_{t-1})) \\
f_t&=\sigma(W_f\cdot(x_t, h_{t-1})) \\
g_t&=\text{tanh}(W_g\cdot(x_t, h_{t-1})) \\
o_t&=\sigma(W_o\cdot(x_t, h_{t-1})) \\
c_t&=f_t\otimes{c_{t-1}}+i_t\otimes{g_t} \\
h_t&=o_t\otimes\text{tanh}(c_t)
\end{aligned}
$$

$$
\begin{aligned}
i_t&=\sigma(W_i\cdot[x_t, h_{t-1}]) \\
f_t&=\sigma(W_f\cdot[x_t, h_{t-1}]) \\
g_t&=\text{tanh}(W_g\cdot[x_t, h_{t-1}]) \\
o_t&=\sigma(W_o\cdot[x_t, h_{t-1}]) \\
c_t&=f_t\otimes{c_{t-1}}+i_t\otimes{g_t} \\
h_t&=o_t\otimes\text{tanh}(c_t)
\end{aligned}
$$

## GRU

$$
\begin{aligned}
r_t&=\sigma(W_r\cdot[x_t, h_{t-1}]) \\
z_t&=\sigma(W_z\cdot[x_t, h_{t-1}]) \\
n_t&=\text{tanh}(W_n\cdot[x_t, r_t\otimes{h_{t-1}}]) \\
h_t&=(1-z_t)\otimes{n_t}+z_t\otimes{h_{t-1}}
\end{aligned}
$$
