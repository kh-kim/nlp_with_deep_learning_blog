# 수식: BPTT

## Many to One

$$\begin{gathered}
h_t=f(x_t, h_{t-1};\psi) \\
\hat{y}=g(h_T;\phi) \\
\theta=\{\phi,\psi\} \\
\\
\mathcal{L}(\theta)=||\hat{y}-y||
\end{gathered}$$

$$\begin{gathered}
T=4 \\
\\
\frac{\partial\mathcal{L}(\theta)}{\partial\phi}=\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}}\frac{\partial\hat{y}}{\partial\phi} \\
\\
\begin{aligned}
\frac{\partial\mathcal{L}(\theta)}{\partial\psi}
    =&\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}}\frac{\partial\hat{y}}{\partial{h_4}}\frac{\partial{h_4}}{\partial\psi}
    +\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}}\frac{\partial\hat{y}}{\partial{h_4}}\frac{\partial{h_4}}{\partial{h_3}}\frac{\partial{h_3}}{\partial\psi}
    +\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}}\frac{\partial\hat{y}}{\partial{h_4}}\frac{\partial{h_4}}{\partial{h_3}}\frac{\partial{h_3}}{\partial{h_2}}\frac{\partial{h_2}}{\partial\psi}
    +\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}}\frac{\partial\hat{y}}{\partial{h_4}}\frac{\partial{h_4}}{\partial{h_3}}\frac{\partial{h_3}}{\partial{h_2}}\frac{\partial{h_2}}{\partial{h_1}}\frac{\partial{h_1}}{\partial\psi} \\
    =&\sum_{t=1}^{T}{
        \frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}}\frac{\partial\hat{y}}{\partial{h_4}}\Big(\prod_{i=t}^{T-1}{
            \frac{\partial{h_{i+1}}}{\partial{h_i}}
        }\Big)\frac{\partial{h_t}}{\partial\psi}
    }
\end{aligned}
\end{gathered}$$

## Many to Many

$$\begin{gathered}
h_t=f(x_t, h_{t-1};\psi) \\
\hat{y}_t=g(h_t;\phi) \\
\theta=\{\phi,\psi\} \\
\\
\mathcal{L}(\theta)=\sum_{t=1}^T{||\hat{y}_t-y_t||}
\end{gathered}$$

$$\begin{gathered}
T=4\\
\mathcal{L}(\theta)=\sum_{t=1}^{T}{||\hat{y}_t-y_t||} \\
\\
\frac{\partial\mathcal{L}(\theta)}{\partial\phi}=\sum_{t=1}^{T}{
    \frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}_t}\frac{\partial\hat{y}_t}{\partial\phi}
} \\
\\
\begin{aligned}
\frac{\partial\mathcal{L}(\theta)}{\partial\psi}
    =&\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}_4}\frac{\partial\hat{y}_4}{\partial{h_4}}\frac{\partial{h_4}}{\partial\psi}
    +\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}_4}\frac{\partial\hat{y}_4}{\partial{h_4}}\frac{\partial{h_4}}{\partial{h_3}}\frac{\partial{h_3}}{\partial\psi}
    +\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}_4}\frac{\partial\hat{y}_4}{\partial{h_4}}\frac{\partial{h_4}}{\partial{h_3}}\frac{\partial{h_3}}{\partial{h_2}}\frac{\partial{h_2}}{\partial\psi}
    +\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}_4}\frac{\partial\hat{y}_4}{\partial{h_4}}\frac{\partial{h_4}}{\partial{h_3}}\frac{\partial{h_3}}{\partial{h_2}}\frac{\partial{h_2}}{\partial{h_1}}\frac{\partial{h_1}}{\partial\psi} \\
    &+\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}_3}\frac{\partial\hat{y}_3}{\partial{h_3}}\frac{\partial{h_3}}{\partial\psi}
    +\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}_3}\frac{\partial\hat{y}_3}{\partial{h_3}}\frac{\partial{h_3}}{\partial{h_2}}\frac{\partial{h_2}}{\partial\psi}
    +\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}_3}\frac{\partial\hat{y}_3}{\partial{h_3}}\frac{\partial{h_3}}{\partial{h_2}}\frac{\partial{h_2}}{\partial{h_1}}\frac{\partial{h_1}}{\partial\psi} \\
    &+\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}_2}\frac{\partial\hat{y}_2}{\partial{h_2}}\frac{\partial{h_2}}{\partial\psi}
    +\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}_2}\frac{\partial\hat{y}_2}{\partial{h_2}}\frac{\partial{h_2}}{\partial{h_1}}\frac{\partial{h_1}}{\partial\psi} \\
    &+\frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}_1}\frac{\partial\hat{y}_1}{\partial{h_1}}\frac{\partial{h_1}}{\partial\psi} \\
    =&\sum_{t=1}^T
        \sum_{k=1}^{t}{
            \frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}_t}\frac{\partial\hat{y}_t}{\partial{h_t}}\Big(
                \prod_{i=k}^{t-1}{
                    \frac{\partial{h_{i+1}}}{\partial{h_i}}
                }
            \Big)\frac{\partial{h_k}}{\partial\psi}
        }
\end{aligned}
\end{gathered}$$

## Gradient Vanishing

$$\begin{aligned}
\frac{\partial\mathcal{L}(\theta)}{\partial\psi}=\sum_{t=1}^{T}{
    \frac{\partial\mathcal{L}(\theta)}{\partial\hat{y}}\frac{\partial\hat{y}}{\partial{h_4}}\Big(\prod_{i=t}^{T-1}{
        \frac{\partial{h_{i+1}}}{\partial{h_i}}
    }\Big)\frac{\partial{h_t}}{\partial\psi}
}
\end{aligned}$$

$$
\frac{\partial{h_{t+1}}}{\partial{h_t}}\le1
$$