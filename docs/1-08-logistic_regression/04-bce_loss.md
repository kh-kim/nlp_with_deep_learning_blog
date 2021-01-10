---
layout: default
title: BCE Loss
parent: Logistic Regression
nav_order: 1-08-04
---

# 로지스틱 회귀의 손실 함수

이전 섹션에서 로지스틱 회귀는 사실 회귀<sup>regression</sup> 문제가 아니라 분류<sup>classification</sup> 문제라고 했습니다.
그리고 분류 문제는 예측하고자 하는 값이 카테고리<sup>categorical</sup>의 이산<sup>discrete</sup>형 데이터라고 했습니다.
그런데 사실 앞서 이야기 한 것을 돌이켜보면, 로지스틱 회귀 모델의 출력 값은 시그모이드<sup>sigmoid</sup>함수의 출력을 활용하므로 연속<sup>continuous</sup>형 데이터에 속합니다.
그래서 0.5를 기준으로 참<sup>True</sup>과 거짓<sup>False</sup>으로 예측 분류할 수 있다고 했습니다.

사실은 이렇게 시그모이드의 출력 값을 활용할 수 있는 이유는 우리가 분류 문제를 확률 문제로 접근할 수 있기 때문입니다.
즉, 샘플 $x$ 가 주어졌을 때, 출력은 $x$ 가 "참 클래스<sup>class</sup>에 속할 것인가?"에 대한 확률 값을 표현한 것이라고 볼 수 있습니다.
이는 수식으로 표현하면 다음과 같고, 당연히 확률 값이므로 0에서 1사이의 값을 지니게 될 것입니다.

$$\begin{gathered}
0\le{P(\text{y}=\text{True}|x)}\le1 \\
\\
P(\text{y}=\text{True}|x)=1-P(\text{y}=\text{False}|x)
\end{gathered}$$

또한 수식에서 볼 수 있는 것처럼 우리에게 선택지는 참과 거짓 두 개 밖에 없기 때문에, 거짓 클래스에 속할 확률 값은 참 클래스에 속할 확률 값을 1에서 빼준 것과 같습니다.
그러므로 우리는 0.5를 기준으로 입력 $x$ 에 대해서 참 또는 거짓 클래스로 예측 분류를 수행할 수 있는 것입니다.

## 이진 크로스엔트로피 손실 함수

그러므로 이제 우리는 로지스틱 회귀를 확률과 관련된 문제로 연관지어 생각할 수 있고, 이것은 기존 회귀<sup>regression</sup>와 다른 손실 함수를 써야 할 계기가 됩니다.<sup>[[1]](#footnote_1)</sup>
그래서 우리는 로지스틱 회귀와 같은 이진 분류<sup>binary classification</sup>문제를 풀기 위해서는 이진 크로스엔트로피<sup>binary cross-entropy, BCE</sup> 손실 함수를 사용합니다.
N개의 정답과 모델 출력 벡터에 대한 BCE 손실 함수는 다음과 같이 정의됩니다.

$$\begin{aligned}
\text{BCE}(y_{1:N},\hat{y}_{1:N})&=-\frac{1}{N}\sum_{i=1}^N{
    y_i^\top\cdot\log{\hat{y}_i}+(1-y_i)^\top\cdot\log(1-\hat{y}_i)
} \\
&=-\frac{1}{N}\sum_{i=1}^N{
    \sum_{j=1}^m{
        y_{i,j}\times\log{\hat{y}_{i,j}}
    }+
    \sum_{j=1}^m{
        (1-y_{i,j})\times\log{(1-\hat{y}_{i,j})}
    }
}
\end{aligned}$$

수식의 두 번째 줄에서, i를 활용하는 바깥 쪽 시그마<sup>sigma</sup> 안 쪽의 두 텀<sup>term</sup> 중에서, 왼쪽 텀은 원래 정답이 참이었을 때에 대한 부분이고, 오른쪽 텀은 원래 정답이 거짓이었을 때에 대한 부분이 됩니다.
따라서 잘 생각해보면 같은 j번째 요소<sup>element</sup>에 대해서 항상 두 텀 중에 한 텀은 0이 되는 것을 알 수 있습니다.
즉, 원래 정답 $y_{i,j}$ 가 1인 경우에는 $\log{\hat{y}_{i,j}}$ 가 커지면 좋겠지요.
커진다는 것은 값의 범위가 제한되어 있으므로 음의 영역에서 0에 가까워진다는 이야기가 됩니다.
마찬가지로 정답이 0인 경우에는 $1-y_{i,j}$ 가 1이므로 $1-\log{\hat{y}_{i,j}}$ 가 커지면 좋을 것입니다.
여기에 가장 바깥쪽에 마이너스가 붙어 있으므로 최대화 문제가 최소화 문제로 바뀌게 됩니다.

이처럼 BCE 손실 함수는 확률 통계와 밀접한 연관이 있고, 더 나아가 정보 이론<sup>information theory</sup>와도 큰 연관이 있습니다.
이 부분에 대해서는 이후에 다른 챕터에서 더 깊이 있게 다루도록 하겠습니다.

<a name="footnote_1">[1]</a>: 물론 로지스틱 회귀의 경우에도 기존 MSE 손실 함수를 쓰더라도 모델 학습이 가능하긴 합니다.
