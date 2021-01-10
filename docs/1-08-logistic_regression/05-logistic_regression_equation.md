---
layout: default
title: Logistic Regression Equations
parent: Logistic Regression
nav_order: 1-08-05
---

# 로지스틱 회귀의 수식

이번에도 $f^*$ 를 근사하기 위해 마찬가지로 N개의 데이터쌍을 수집하여 데이터셋을 구성합니다.
이때, 기존과 달리 타겟 출력 값은 실수의 벡터 또는 행렬이 아니라, 참<sup>True</sup>과 거짓<sup>False</sup>에 대한 문제이므로 0 또는 1의 값만 가지도록 되어 있습니다.

$$\begin{gathered}
\mathcal{D}=\{(x_i,y_i)\}_{i=1}^N, \\
\text{where }x_{1:N}\in\mathbb{R}^{N\times{n}}\text{ and }y_{1:N}\in\{0,1\}^{N\times{m}}.
\end{gathered}$$

여기에 우리는 우리의 모델 $f_\theta$ 로 선형 계층<sup>linear layer</sup>과 시그모이드<sup>sigmoid</sup> 함수를 합쳐 구성합니다.
그럼 수집한 N개의 입력 샘플을 통과<sup>feed-forward</sup>시켜 모델의 출력 값 $\hat{y}$ 를 얻을 수 있습니다.
이 모델의 출력 행렬의 경우에는 크기는 타겟 출력 행렬과 같지만, 0에서 1사이의 실수 값을 가진다는 것이 차이점이 됩니다.

$$\begin{gathered}
\hat{y}_{1:N}=\sigma(x_{1:N}\cdot{W}+b)
\end{gathered}$$

그럼 이제 우리는 BCE 손실 함수를 구성할 수 있습니다.
이 손실 함수는 모델 가중치 파라미터를 입력으로 받으며, 그에 따른 손실 값을 출력으로 반환합니다.

$$\begin{gathered}
\mathcal{L}(W,b)=-\frac{1}{N}\sum_{i=1}^N{
    y_i^\top\cdot\log{\hat{y}_i}+(1-y_i)^\top\cdot\log(1-\hat{y}_i)
}
\end{gathered}$$

이때, 우리가 찾고자 하는 모델의 가중치 파라미터는 이 손실 함수를 최소화 하는 입력 값이 됩니다.

$$\begin{gathered}
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmin }}\mathcal{L}(\theta)\text{, where }\theta=\{W,b\}.
\end{gathered}$$

이를 위해서 우리는 손실 함수를 각 가중치 파라미터로 미분하여 경사하강법<sup>gradient descent</sup>를 통해 손실 값을 낮추는 방향으로 가중치 파라미터를 업데이트 합니다.
이 업데이트 과정을 반복하여, 가중치 파라미터가 수렴된다면 우리는 $f^*$ 를 근사하는 모델 함수를 찾을 수 있게 됩니다.

$$\begin{gathered}
W\leftarrow{W}-\eta\cdot\nabla_{W}\mathcal{L}(W,b) \\
b\leftarrow{b}-\eta\cdot\nabla_{b}\mathcal{L}(W,b)
\end{gathered}$$

이때 우리는 모델의 출력 벡터의 j번째 요소가 "입력 샘플이 j번째 항목에 대해서 참 클래스에 속하는가?"에 대한 확률 값의 표현이라고 볼 수도 있습니다.

$$\begin{gathered}
\hat{P}(\text{y}_j=\text{True}|x_i)\approx\hat{y}_{i,j}
\end{gathered}$$

그러므로 BCE 손실 함수를 다음과 같이 다시 표현해볼 수 있습니다.

$$\begin{gathered}
\begin{aligned}
\text{BCELoss}(y_{1:N},\hat{y}_{1:N})&=-\frac{1}{N}\sum_{i=1}^N{
    \sum_{j=1}^m{
        y_{i,j}\times\log{\hat{y}_{i,j}}+(1-y_{i,j})\times\log{(1-\hat{y}_{i,j})}
    }
} \\
&=-\frac{1}{N}\sum_{i=1}^N{
    \sum_{j=1}^m{
        P(\text{y}_j=\text{True}|x_i)\times\log{P(\text{y}_j=\text{True}|x_i;\theta)}+P(\text{y}_j=\text{False}|x_i)\times\log{P(\text{y}_j=\text{False}|x_i;\theta)}
    }
},
\end{aligned} \\
\text{where }y_{i,j}=P(\text{y}_j=\text{True}|x_i)\text{ and }1-y_{i,j}=P(\text{y}_j=\text{False}|x_i).
\end{gathered}$$

이처럼 BCE 손실 함수는 확률 통계와 밀접한 연관이 있고, 더 나아가 정보 이론<sup>information theory</sup>와도 큰 연관이 있습니다.
정보 이론과의 연관성에 대해서는 이후에 다른 챕터에서 더 깊이 있게 다루도록 하겠습니다.
