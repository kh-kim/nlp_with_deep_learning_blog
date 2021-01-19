---
layout: default
title: Batch Normalizations
parent: Regularizations
nav_order: 1-14-05
---

# 배치정규화

이번엔 가장 널리 쓰이는 정규화 기법인 배치정규화<sup>batch normalization</sup>에 대해서 살펴보도록 하겠습니다.

## Covariate Shift

## 배치정규화의 동작

$$\begin{gathered}
\text{batch}\_\text{norm}(x)=\gamma\frac{(x-\mu)}{\sqrt{\sigma^2+\epsilon}}+\beta \\
\\
\mu=x.\text{mean}(\text{dim}=0) \\
\sigma=x.\text{std}(\text{dim}=0) \\
\\
\text{where }x\in\mathbb{R}^{N\times{n}}.
\end{gathered}$$

## 배치정규화의 구현

## 배치정규화의 장점과 한계
