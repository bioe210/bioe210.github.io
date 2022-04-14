---
layout: main-layout
---

<link href="style.css" rel="stylesheet">

<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>

<center>
<h2>Errata for<br>
<i>Linear Algebra: Foundations of Machine Learning</i></h2>
</center>

*Last update: 4/14/2022.*

<b>Page 115</b> The second equation should read

$$ P(\text{disease}) = \frac{1}{1 + e^{-(-14.032=0.50558[\text{CAGs}])}}. $$

Note the minus sign in the exponent.

<p>
<b>Page 159</b> In the third to last line

$$ \boldsymbol{\mathrm{A}} - \lambda_\text{max}\boldsymbol{\mathrm{I}} $$

should read

$$ \boldsymbol{\mathrm{A}} - \lambda_\text{max}\boldsymbol{\mathrm{v}}_\text{max}\boldsymbol{\mathrm{v}}_\text{max}^\mathsf{T} $$
