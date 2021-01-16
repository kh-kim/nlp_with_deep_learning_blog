---
layout: default
title: Matric Multiplications
parent: Linear Layer
nav_order: 1-04-01
---

# 행렬 곱

아마 대부분의 독자들은 고등학교에서 행렬에 대해 배웠을 것입니다.
이번 장에서는 행렬 곱셈(내적)에 대해서 복습하는 시간을 갖도록 하겠습니다.

## 행렬 곱

우리에게 행렬 A와 B가 주어져 있고, 이 둘을 곱한다고 해보죠.
그럼 곱셈 과정은 다음과 같이 진행 될 것입니다.
곱셈의 앞 행렬 A의 행<sup>row</sup>의 요소<sup>element</sup>들을 뒷 행렬 B의 열<sup>column</sup>의 요소들에 각각 곱한 후 더한 값을 결과 행렬의 요소로 결정하게 됩니다.
이때 중요한 점은 상기한 계산 과정 때문에 A와 B의 행과 열의 크기는 같아야 한다는 제약 조건이 발생합니다.

$$\begin{aligned}
AB&=\begin{bmatrix}
    1 & 2 & 3 \\
    4 & 5 & 6
\end{bmatrix}\times\begin{bmatrix}
    1 & 2 \\
    3 & 4 \\
    5 & 6
\end{bmatrix} \\
&=\begin{bmatrix}
    1\times1+2\times3+3\times5 & 1\times2+2\times4+3\times6 \\
    4\times1+5\times3+6\times5 & 4\times2+5\times4+6\times6
\end{bmatrix} \\
&=\begin{bmatrix}
    1+6+15 & 2+8+18 \\
    4+15+30 & 8+20+36
\end{bmatrix}
=\begin{bmatrix}
    22 & 28 \\
    49 & 64
\end{bmatrix}
\end{aligned}$$

앞의 계산 과정에서 볼 수 있듯이, 행렬 A는 실수<sup>real number</sup>로 구성된 $2\times3$ 의 행렬이고, B도 마찬가지로 실수로 구성된 $3\times2$ 의 행렬입니다.
그러므로 곱셈 결과 행렬인 AB는 실수로 구성된 $2\times2$ 의 행렬이 됩니다.
이것을 수식으로 표현하면 다음과 같습니다.

$$\begin{gathered}
A\in\mathbb{R}^{2\times3}\text{, }B\in\mathbb{R}^{3\times2}\text{ and }AB\in\mathbb{R}^{2\times2}.
\end{gathered}$$

이 책에서는 앞의 표기법과 다음의 표기법을 함께 사용하고자 합니다.
다음의 표기법은 실제 수학에서 공식적으로 사용하는 것은 아니고, 파이토치 텐서의 size() 함수의 결과를 표현한것에 가깝다고 보면 좋을 것 같습니다.

$$\begin{gathered}
|A|=(2,3)\text{, }|B|=(3,2)\text{ and }|AB|=(2,2).
\end{gathered}$$

이러한 행렬의 곱셈 과정은 내적 또는 닷 프로덕트<sup>dot product</sup>라고 부릅니다.

## 벡터 행렬 곱

벡터와 행렬의 곱셈도 행렬의 곱셈처럼 생각해볼 수 있습니다.
벡터와 벡터의 곱셈도 마찬가지입니다.
예를 들어 벡터와 행렬이 주어졌을 때, 행렬과 벡터의 곱셈은 다음과 같이 표현될 수 있습니다.
주의할 점은 벡터가 곱셈의 앞에 위치할 경우, 전치<sup>transpose</sup>를 통해 행과 열을 바꿔 표현하여 곱셈을 수행한다는 것입니다.

$$\begin{aligned}
v^\intercal{M}&=\begin{bmatrix}
    1 & 2 & 3
\end{bmatrix}\times\begin{bmatrix}
    1 & 2 \\
    3 & 4 \\
    5 & 6
\end{bmatrix} \\
&=\begin{bmatrix}
    1\times1+2\times3+3\times5 & 1\times2+2\times4+3\times6
\end{bmatrix} \\
&=\begin{bmatrix}
    1+6+15 & 2+8+18
\end{bmatrix}=\begin{bmatrix}
    22 & 28
\end{bmatrix}
\end{aligned}$$

이 경우에도 그럼 벡터와 행렬의 크기를 수식 또는 우리만의 표기법을 통해 표현하면 다음과 같이 표현될 것입니다.

$$\begin{gathered}
v\in\mathbb{R}^3\text{, }v^\intercal\in\mathbb{R}^{1\times3}\text{ and }M\in\mathbb{R}^{3\times2}. \\
\downarrow \\
|v^\intercal|=(1,3)\text{, }|M|=(3,2)\text{ and }|v^\intercal{M}|=(1,2).
\end{gathered}$$

또는 같은 연산 과정을 벡터와 행렬의 위치를 바꾸어 표현해볼 수 있습니다.
이때는 곱셈의 앞에 기존 행렬 대신 전치행렬을 구해서 연산에 투입하는 것에 주의하세요.

$$\begin{aligned}
M^\intercal{v}&=\begin{bmatrix}
    1 & 3 & 5 \\
    2 & 4 & 6
\end{bmatrix}\times\begin{bmatrix}
    1 \\
    2 \\
    3
\end{bmatrix} \\
&=\begin{bmatrix}
    1\times1+3\times2+5\times3 \\
    2\times1+4\times2+6\times3
\end{bmatrix}=\begin{bmatrix}
    1+6+15 \\
    2+8+18
\end{bmatrix}=\begin{bmatrix}
    22 \\
    28
\end{bmatrix}
\end{aligned}$$

재미있게도 이전 벡터 행렬 곱셈의 결과와 전치된 같은 결과가 나오는 것을 확인할 수 있습니다.
또한, 이 경우의 각 벡터와 행렬의 크기는 다음과 같이 표시될 수 있습니다.

$$\begin{gathered}
|M^\intercal|=(2,3)\text{, }|v|=(3,)=(3,1)\text{ and }|Mv|=(2,1)=(2,).
\end{gathered}$$

벡터의 경우에는 두 번째 차원의 크기(요소의 갯수)가 1인 행렬과 똑같은 형태로 취급할 수 있는 점에 주목하세요.
