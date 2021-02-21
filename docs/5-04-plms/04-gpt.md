---
layout: default
title: Autoregressive Models - GPT
parent: Pretrained Language Models
nav_order: 5-04-04
---

# Autoregressive Models - GPT

## Motivations

## Overview

$$\begin{gathered}
\mathcal{D}=\{x_i\}_{i=1}^N, \\
\text{where }x_i=\{w_{i,1},\cdots,w_{i,n}\}.
\end{gathered}$$

$$\begin{gathered}
\mathcal{L}(\theta_\text{PLM})=-\sum_{i=1}^N{
    \sum_{t=1}^n{
        \log{P(w_{i,t}|w_{i,<t};\theta_\text{PLM})}
    }
} \\
\\
\hat{\theta}_\text{PLM}=\underset{\theta_\text{PLM}\in\Theta}{\text{argmin }}\mathcal{L}(\theta_\text{PLM})
\end{gathered}$$

## Fine-tuning

## Evaluations

## Wrap-up
