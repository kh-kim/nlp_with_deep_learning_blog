---
layout: default
title: n-gram
parent: Language Modeling
nav_order: 4-02-03
---

# n-gram

$$\begin{aligned}
P(\text{<BOS>, I, love, to, play, <EOS>})&=P(\text{<EOS>}|\text{<BOS>, I, love, to, play})P(\text{<BOS>, I, love, to, play}) \\
&=P(\text{<EOS>}|\text{<BOS>, I, love, to, play})P(\text{play}|\text{<BOS>, I, love, to})P(\text{<BOS>, I, love, to}) \\
&=P(\text{<EOS>}|\text{<BOS>, I, love, to, play})P(\text{play}|\text{<BOS>, I, love, to})P(\text{to}|\text{<BOS>, I, love})P(\text{<BOS>, I, love}) \\
&=P(\text{<EOS>}|\text{<BOS>, I, love, to, play})P(\text{play}|\text{<BOS>, I, love, to})P(\text{to}|\text{<BOS>, I, love})P(\text{love}|\text{<BOS>, I})P(\text{<BOS>, I}) \\
&=P(\text{<EOS>}|\text{<BOS>, I, love, to, play})P(\text{play}|\text{<BOS>, I, love, to})P(\text{to}|\text{<BOS>, I, love})P(\text{love}|\text{<BOS>, I})P(\text{I}|\text{<BOS>})P(\text{<BOS>}) \\
\end{aligned}$$

$$
P(\text{<EOS>}|\text{<BOS>, I, love, to, play})\approx\frac{\text{COUNT}(\text{<BOS>, I, love, to, play, <EOS>})}{\text{COUNT}(\text{<BOS>, I, love, to, play})}
$$

$$
P(x_n|x_{<n})\approx\frac{\text{COUNT}(x_1,\cdots,x_n)}{\text{COUNT}(x_1,\cdots,x_{n-1})}
$$

## Markov Assumption

$$\begin{aligned}
P(x_n|x_{<n})&\approx{P(x_n|x_{n-1},\cdots,x_{n-k})} \\
&\approx\frac{\text{COUNT}(x_{n-k},\cdots,x_n)}{\text{COUNT}(x_{n-k},\cdots,x_{n-1})}
\end{aligned}$$

if $k=2$ ,

$$\begin{aligned}
P(x_n|x_{<n})&\approx{P(x_n|x_{n-1},x_{n-2})} \\
&\approx\frac{\text{COUNT}(x_{n-2},x_{n-1},x_n)}{\text{COUNT}(x_{n-2},x_{n-1})}
\end{aligned}$$

### Expand to sentence

$$\begin{aligned}
\log{P(x_{1:n})}&=\sum_{i=1}^n\log{P(x_i|x_{<i})} \\
&\approx\sum_{i=1}^n\log{P(x_i|x_{i-1},\cdots,x_{i-k})}
\end{aligned}$$
