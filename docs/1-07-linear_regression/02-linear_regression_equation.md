---
layout: default
title: Linear Regression Equations
parent: Linear Regression
nav_order: 1-07-02
---

# 선형 회귀의 수식

이제 그럼 앞서 그림을 통해 설명한 선형 회귀의 학습 방법을 수식으로 표현해보고자 합니다.

앞서 언급했던 대로 우리는 N개의 n차원의 입력 벡터와 m차원의 타겟 출력 벡터의 쌍을 데이터로 수집합니다.

$$\begin{gathered}
\mathcal{D}=\{(x_i, y_i)\}_{i=1}^N, \\
\text{where }x_{1:N}\in\mathbb{R}^{N\times{n}}\text{ and }y_{1:N}\in\mathbb{R}^{N\times{m}}.
\end{gathered}$$

그럼 우린 이 벡터들을 행렬로 나타낼 수 있고, 그것은 아래와 같이 표현될 수 있습니다.

$$\begin{gathered}
x_{1:N}=\begin{bmatrix}
    x_{1,1} & \cdots & x_{1,n} \\
    \vdots & \ddots & \vdots \\
    x_{N,1} & \cdots & x_{N,n}
\end{bmatrix} \\
\\
y_{1:N}=\begin{bmatrix}
    y_{1,1} & \cdots & y_{1,m} \\
    \vdots & \ddots & \vdots \\
    y_{N,1} & \cdots & y_{N,m}
\end{bmatrix}
\end{gathered}$$

이제 우리는 다음의 수식과 같이 손실 함수를 정의하고, 손실 함수를 최소화시키는 입력인 모델의 가중치 파라미터를 찾아야 합니다.

$$\begin{gathered}
\hat{\theta}=\underset{\theta\in\Theta}{\text{argmin}}\sum_{i=1}^N{\|y_i-f_\theta(x_i)\|}_2^2, \\
\text{where }\theta=\{W,b\}\text{ and }f_\theta(x)=x\cdot{W}+b.
\end{gathered}$$

이때 우리는 예전 선형 계층을 설명했을 때처럼, 각각의 샘플을 따로 계산하는 대신 행렬로 한꺼번에 계산할 수 있습니다.

$$\begin{gathered}
\hat{y}_{1:N}=x_{1:N}\cdot{W}+b, \\
\text{where }W\in\mathbb{R}^{n\times{m}}\text{ and }b\in\mathbb{R}^m.
\end{gathered}$$

선형 회귀의 손실 함수는 주로 MSE 손실 함수를 활용하게 되고, 다음과 같이 전개 될 것입니다.

$$\begin{gathered}
\begin{aligned}
\mathcal{L}(\theta)&=\sum_{i=1}^N{\|y_i-\hat{y}_i\|_2^2} \\
&=\sum_{i=1}^N{
    \sum_{j=1}^m{
        (y_{i,j}-\hat{y}_{i,j})^2
    }
} \\
&=\sum_{i=1}^N{
    \sum_{j=1}^m{
        y_{i,j}^2-2y_{i,j}\cdot\hat{y}_{i,j}+\hat{y}_{i,j}^2
    }
},
\end{aligned} \\
\text{where }\hat{y}_{i,j}=\sum_{k=1}^n{
    x_{i,k}\times{W}_{k,j}
}+b_j.
\end{gathered}$$

선형 계층의 가중치 파라미터 $\theta$ 를 경사하강법을 통해 업데이트 하는 것은, $W$ 와 $b$ 로 각각 손실 함수를 편미분 한 후 경사하강법을 통해 업데이트 하는 것과 같습니다.

$$\begin{gathered}
\theta\leftarrow\theta-\eta\nabla_\theta\mathcal{L}(\theta) \\
\downarrow \\
W\leftarrow{W}-\eta\nabla_{W}\mathcal{L}(\theta) \\
b\leftarrow{b}-\eta\nabla_{b}\mathcal{L}(\theta) \\
\downarrow \\
W_{k,j}\leftarrow{W}_{k,j}-\eta\cdot\frac{\partial \mathcal{L}(\theta)}{\partial W_{k,j}} \\
b_{j}\leftarrow{b}_{j}-\eta\cdot\frac{\partial \mathcal{L}(\theta)}{\partial b_{j}}
\end{gathered}$$

이와 같은 경사하강법을 통해 우리는 점차 손실 값을 줄여나갈 수 있으며, 더이상 손실 값이 줄어들지 않을 때 경사하강법을 통한 파라미터 업데이트를 중지합니다.
이렇게 얻어진 가중치 파라미터를 통해 정의되는 함수 $f_\theta$ 는 $f^*$ 를 근사한다고 할 수 있습니다.
