---
layout: default
title: Basic Stats
parent: Probabilistic Perspective
nav_order: 02
---

# 기본 확률 통계

## Random Variable

$$
P(\text{x}=x)
$$

$$
P(\text{y}=y)
$$

## Discrete and Continuous Variables

## Discrete Probability Distribution

$$
\sum_{x}{P(\text{x}=x)}=1\text{, where }0\le{P(\text{x}=x)}\le1\text{, }\forall{x}\in\mathcal{X}.
$$

## Continuous Probability Distribution

$$
\int{p(x)}\text{ }dx=1\text{, where }p(x)\ge0\text{, }\forall{x}\in\mathbb{R}
$$

## Joint Probability

$$
P(\text{x},\text{y})
$$

$$
P(\text{x}=x,\text{y}=y)
$$

$$
P(\text{x}=x,\text{y}=y)=P(x)\times{P(y)}\text{ iff. x and y are independent.}
$$

## Conditional Probability

$$
P(\text{y}|\text{x})=\frac{P(\text{x},\text{y})}{P(\text{x})}
$$

$$
P(\text{x}, \text{y})=P(\text{y}|\text{x})P(\text{x})
$$

## Bayes Theorem

$$
P(h|D)=\frac{P(D|h)P(h)}{P(D)}
$$

## Function? or Value?

$$
P(x)
$$

$$
P(\text{x})
$$

$$
P(y|x)
$$

$$
P(\text{y}|x)
$$

$$
P(y|\text{x})=f(\text{x})
$$

## Monti-Hall Problem

## Marginal Distribution

$$\begin{aligned}
P(x)&=\int{P(x,z)}\text{ }dz \\
&=\int{P(x|z)P(z)}\text{ }dz \\
&=\int{P(z|x)P(x)}\text{ }dz=P(x)\int{P(z|x)}\text{ }dz
\end{aligned}$$

## Expectation and Sampling

$$
\mathbb{E}_{\text{x}\sim{P(\text{x})}}\big[f(x)\big]
$$

$$\begin{aligned}
\mathbb{E}_{\text{x}\sim{P(\text{x})}}\big[f(x)\big]=\sum_{x\in\mathcal{X}}{P(x)\cdot{f(x)}}
\end{aligned}$$

### Rolling a Dice

$$
P(x)=\frac{1}{6}\text{, }x\in\{1,2,3,4,5,6\}.
$$

$$\begin{aligned}
\mathbb{E}_{\text{x}\sim{P(\text{x})}}\big[f(x)\big]&=\sum_{x\in\{1,2,3,4,5,6\}}{P(\text{x}=x)}\cdot{f(x)} \\
&=\frac{1}{6}\times\big(f(1)+f(2)+f(3)+f(4)+f(5)+f(6)\big) \\
&=\frac{1}{6}\times(1+2+3+4+5+6)=3.5\text{, where }f(x)=x.
\end{aligned}$$

$$\begin{aligned}
\mathbb{E}_{\text{x}\sim{P(\text{x})}}\big[f(x)\big]=\int{P(x)\cdot{f(x)}}\text{ }dx
\end{aligned}$$

$$\begin{aligned}
P(x)&=\int{P(x,z)}\text{ }dz \\
&=\int{P(x|z)P(z)}\text{ }dz \\
&=\mathbb{E}_{\text{z}\sim{P(\text{z})}}\big[P(x|\text{z})\big] \\
\end{aligned}$$

## Monte-Carlo Sampling

$$
\mathbb{E}_{\text{x}\sim{P(\text{x})}}\big[f(x)\big]\approx\frac{1}{n}\sum_{i=1}^n{f(x_i)}\text{, where }x_i\sim{P(\text{x})}.
$$