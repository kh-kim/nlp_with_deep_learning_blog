# Max-pooling & Stride

$$\begin{aligned}
b&=\text{batch size} \\
(x_{\text{height}}, x_{\text{width}})&=\text{input size} \\
c_{\text{in}}&=\text{\# input channels} \\
c_{\text{out}}&=\text{\# output channels} \\
(k_{\text{height}}, k_{\text{width}})&=\text{kernel size} \\
(y_{\text{height}}, y_{\text{width}})&=\text{output size} \\
\\
(p_{\text{height}}, p_{\text{width}})&=\text{pad size} \\
(s_{\text{height}}, s_{\text{width}})&=\text{stride size} \\
\end{aligned}$$

$$\begin{gathered}
y=\text{conv2d}(x), \\
\text{where }\begin{cases}
|x|=(b, c_{\text{in}}, x_{\text{height}}, x_{\text{width}}) \\
\begin{aligned}|y|&=(y_{\text{height}}, y_{\text{width}}) \\
&=\Big(b,c_{\text{out}},
\Big\lfloor{\frac{
    x_{\text{height}}+2\times{p_{\text{height}}}-(k_{\text{height}}-1)-1
}{
    s_{\text{height}}
}+1}\Big\rfloor,
\Big\lfloor{\frac{
    x_{\text{width}}+2\times{p_{\text{width}}}-(k_{\text{width}}-1)-1
}{
    s_{\text{width}}
}+1}\Big\rfloor
\Big).
\end{aligned}
\end{cases}
\end{gathered}$$