---
layout: default
title: Momentum & Adaptive LR
parent: Optimizer
nav_order: 1-11-3
---

# 모멘텀과 적응형 학습률

학습률<sup>learning rate</sup>은 대표적인 하이퍼파라미터<sup>hyper-parameter</sup>입니다.
값이 너무 크면 학습이 안정적으로 이루지지 않고, 값이 너무 작으면 학습이 너무 더디기 때문에, 가장 먼저 튜닝이 필요한 파라미터이기도 합니다.

그동안 우리가 활용해온 최적화 방법을 수식으로 나타내면 다음과 같습니다.

$$\begin{gathered}
\mathcal{L}(\theta_t)=\frac{1}{N}\sum_{i=1}^N{
    \Delta\Big(f(x_i;\theta_t),y_i\Big)
} \\
\\
g_t=\nabla_\theta\mathcal{L}(\theta_t)
\end{gathered}$$

손실 함수<sup>loss function</sup>는 타겟 출력 값과 함수의 출력 값 사이의 차이( $\Delta$ )를 데이터셋의 샘플들에 대해 계산합니다.
그리고 이것을 가중치 파라미터<sup>weight parameter</sup>에 대해서 미분하면 그래디언트<sup>gradient</sup> 벡터 $g_t$ 를 얻을 수 있을 것입니다.

그럼 경사하강법<sup>gradient descent</sup>의 수식은 다음과 같습니다.
앞서 구한 그래디언트에 학습률<sup>learning rate, LR</sup>을 곱해서 기존 파라미터에서 빼 준 결과를 다음 파라미터로 정합니다.

$$\begin{gathered}
\theta_{t+1}=\theta_t-\eta\cdot{g_t}, \\ 
\text{where }\eta\text{ is learning rate}.
\end{gathered}$$

이러한 기존의 경사하강법에 우리는 여러가지 기법을 더함으로써, 좀 더 수월하게 가중치 파라미터를 최적화 할 수 있습니다.

## 모멘텀

모멘텀<sup>momentum</sup>은 딥러닝 이전부터 활용되어 온 유서깊은 최적화 기법입니다.
그래서 모멘텀을 통해 여러가지 이점을 얻을 수 있는데요.
먼저 지역최소점<sup>local minima</sup>을 쉽게 탈출할 수 있을 뿐만 아니라, 학습 속도를 가속화 할 수 있습니다.

모멘텀은 '관성'이라는 의미를 지니고 있는 만큼, 수식을 살펴보면 예전 그래디언트를 누적해서 계산하는 것을 볼 수 있습니다.

$$\begin{gathered}
\begin{aligned}
\tilde{g}_t&=\gamma\cdot{\tilde{g}_{t-1}}-\eta\cdot{g_t} \\
&=-\eta\cdot\sum_{i=1}^t{
    \gamma^{t-i}\cdot{g_i}
},
\end{aligned} \\
\text{where }\tilde{g}_0=0\text{ and }\gamma\text{ is discount factor}.
\end{gathered}$$

이전까지의 모멘텀 그래디언트와 현재 그래디언트의 선형 결합<sup>linear combination</sup>을 계산하는데요.
이것을 다시 표현하면 처음부터 현재까지의 디스카운트<sup>discount</sup> 파라미터가 곱해진 그래디언트의 누적 합이 됩니다.

그럼 다음 가중치 파라미터를 업데이트하기 위해, 현재 가중치 파라미터에 모멘텀 그래디언트를 더해주게 됩니다.
결국 풀어보면 모든 타임스텝<sup>time-step</sup>의 그래디언트를 누적하여 빼주는 형태로 수식이 정리되는 것을 볼 수 있습니다.

$$\begin{aligned}
\theta_{t+1}&=\theta_t+\tilde{g}_t \\
&=\theta_t-\eta\cdot\sum_{i=1}^t{
    \gamma^{t-i}\cdot{g_i}
}
\end{aligned}$$

앞선 모멘텀의 수식을 구체적인 예시를 통해 좀 더 이해해보도록 하겠습니다.

## 적응형 학습률

모멘텀의 경우에는 학습을 가속시켜준다는 점에서 널리 활용되었습니다만, 여전히 근본적인 아쉬움은 남아있었습니다.
바로 학습률의 튜닝 이슈입니다.

## 학습률 스케줄링

여러 에포크<sup>epoch</sup>로 구성된 한 모델의 학습 내에서도 학습률에 따른 특성이 나뉘게 됩니다.

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
