---
layout: default
title: Momentum & Adaptive LR
parent: Optimizer
nav_order: 1-11-3
---

# 모멘텀과 적응 학습률

학습률<sup>learning rate</sup>은 대표적인 하이퍼파라미터<sup>hyper-parameter</sup>입니다.
값이 너무 크면 학습이 안정적으로 이루지지 않고, 값이 너무 작으면 학습이 너무 더디기 때문에, 가장 먼저 튜닝이 필요한 파라미터이기도 합니다.

그동안 우리가 활용해온 경사하강법<sup>gradient descent</sup>의 수식을 나타내면 다음과 같습니다.

$$\begin{gathered}
\mathcal{L}(\theta_t)=\frac{1}{N}\sum_{i=1}^N{
    \Delta\Big(f(x_i;\theta_t),y_i\Big)
} \\
\\
g_t=\nabla_\theta\mathcal{L}(\theta_t)
\end{gathered}$$

손실 함수<sup>loss function</sup>는 타겟 출력 값과 함수의 출력 값 사이의 차이( $\Delta$ )를 데이터셋의 샘플들에 대해 계산합니다.
그리고 이것을 가중치 파라미터<sup>weight parameter</sup>에 대해서 미분하면 그래디언트<sup>gradient</sup> 벡터 $g_t$ 를 얻을 수 있을 것입니다.

$$\begin{gathered}
\theta_{t+1}=\theta_t-\eta\cdot{g_t}, \\ 
\text{where }\eta\text{ is learning rate}.
\end{gathered}$$

## Momentum

$$\begin{gathered}
\begin{aligned}
\tilde{g}_t&=\gamma\cdot{\tilde{g}_{t-1}}-\eta\cdot{g_t} \\
&=-\eta\cdot\sum_{i=1}^t{
    \gamma^{t-i}\cdot{g_i}
},
\end{aligned} \\
\text{where }\tilde{g}_0=0\text{ and }\gamma\text{ is momentum}. \\
\\
\begin{aligned}
\theta_{t+1}&=\theta_t+\tilde{g}_t \\
&=\theta_t-\eta\cdot\sum_{i=1}^t{
    \gamma^{t-i}\cdot{g_i}
}
\end{aligned}
\end{gathered}$$

## Adaptive LR

### AdaGrad

$$\begin{gathered}
\begin{aligned}
r_t&=r_{t-1}+g_t\odot{g_t} \\
&=\sum_{i=1}^t{
    g_i\odot{g_i}
},
\end{aligned} \\
\text{where }r_0=0\text{ and }\odot\text{ is element-wise multiplication}. \\
\\
\begin{aligned}
\theta_{t+1}&=\theta_t-\frac{\eta}{\sqrt{r_t+\epsilon}}\odot{g_t} \\
&=\theta_t-\eta\cdot\frac{g_t}{\sqrt{\epsilon+\sum_{i=1}^t{
    g_i\odot{g_i}
}}}
\end{aligned}
\end{gathered}$$
