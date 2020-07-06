---
layout: default
title: Motivations
parent: Adv. Topics on NLG
nav_order: 4-08-04
---

# Motivations for RL in NLG

## Image Generations

### Image Generation using MSE Loss

### Generative Adversarial Networks (GAN)

$$\begin{gathered}
\underset{G\in\mathcal{G}}{\min}\underset{D\in\mathcal{D}}{\max}\mathcal{L}(D,G)
=\mathbb{E}_{x\sim{p_\text{real}(\text{x})}}\Big[
    \log{D(x)}
\Big]
+\mathbb{E}_{z\sim{p_z(\text{z})}}\Big[
    \log{\big(
        1-D\circ{G(z)}
    \big)}
\Big], \\
\text{where }G\text{ is generator and }D\text{ is discriminator}.
\end{gathered}$$

## Discrapency between Training Objective and Real Objective

### Cross Entropy (PPL) vs BLEU

#### Applying GAN to NLG

#### Discrete Random Process cannot pass Gradient

### Teacher Forcing leads discrapency between training mode and inference mode
