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

$$\text{episode}=\{s_0,a_0,r_1,s_1,a_1,r_2,s_2,a_2,r_3,s_3,a_3,\cdots\}$$

## Markov Decision Process (MDP)

$$P(s_t|s_{t-1},a)$$

$$\text{reward}=R(s,a)$$

## Objective

### Cumulative Reward

$$G_t=r_{t+1}+r_{t+2}+\cdots+r_T$$

#### Discount Factor

$$\begin{aligned}
G_t&=r_{t+1}+\gamma{r_{t+2}}+\gamma^2{r_{t+3}}+\cdots \\
&=\sum_{k=0}^{\infty}{
    \gamma^k{r_{t+k+1}}
}
\end{aligned}$$

## Policy

$$\pi(a|s)=P(A_t=a|S_t=s)$$

## Value Function

$$\begin{gathered}
\begin{aligned}
v_\pi(s)&=\mathbb{E}_\pi[G_t|S_t=s] \\
&=\mathbb{E}_\pi\Big[\sum_{k=0}^\infty{
    \gamma^k{r_{t+k+1}\big|S_t=s}
}\Big]\text{, }\end{aligned} \\
\forall{s}\in\mathcal{S}.
\end{gathered}$$

## Action-Value Function(Q-Function)

$$\begin{gathered}
Q_\pi(s,a)=\mathbb{E}_\pi[G_t|S_t=s,A_t=a]=\mathbb{E}_\pi\Big[
    \sum_{k=0}^\infty{
        \gamma^k{r_{t+k+1}}\big|S_t=s,A_t=a
    }
\Big], \\
\forall{s}\in\mathcal{S}\text{ and }\forall{a}\in\mathcal{A}.
\end{gathered}$$
