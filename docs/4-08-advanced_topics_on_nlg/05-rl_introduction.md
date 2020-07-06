---
layout: default
title: Introduction to RL
parent: Adv. Topics on NLG
nav_order: 4-08-05
---

# RL Introduction

## Background

### Agent

### Environment

### State

### Action

### Reward

### Episode

$$
\text{episode}=\{s_0,a_0,r_1,s_1,a_1,r_2,s_2,a_2,r_3,s_3,a_3,\cdots\}
$$

## Markov Decision Process (MDP)

$$
P(s_t|s_{t-1},a)
$$

$$
\text{reward}=R(s,a)
$$

## Objective

### Cumulative Reward

$$
G_t=r_{t+1}+r_{t+2}+\cdots+r_T
$$

#### Discount Factor

$$\begin{aligned}
G_t&=r_{t+1}+\gamma{r_{t+2}}+\gamma^2{r_{t+3}}+\cdots \\
&=\sum_{k=0}^{\infty}{
    \gamma^k{r_{t+k+1}}
}
\end{aligned}$$

## Policy

$$
\pi(a|s)=P(A_t=a|S_t=s)
$$
