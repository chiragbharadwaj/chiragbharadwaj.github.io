---
layout: default
title: ml
katex: true
---

# Machine learning from scratch

----

## Author's note

I've always wanted to have a centralized repository of lecture-style posts that covers the basics of modern ML theory. Although not all results developed here will harbor use in practical implementations (indeed, at the time of this writing much of ML is dominated by deep learning), the goal is to provide a strong foundation in classical interpretations of statistics as well as a rigorous treatment of the flavor of machine learning that "dominated the scene" for decades. Finally, there will be a significant module at the end dedicated towards more modern materials, including various probabilistic theories drawn from deep learning.

It is highly recommended to read through the [axiomatic treatment][calculus] of calculus prior to revising these modules. I will freely assume familiarity with concepts such as $\sigma$-algebras and results from basic topology in the exposition on probability theory, for example.

## List of modules

In keeping with the Commonwealth nomenclature, each module comprises several lectures. Please click on the associated links to see a detailed breakdown of lectures per module. The topics listed below survey broadly what each module aims to cover.

### <!--[[link]][prob]-->[TBD] &thinsp; Probability theory

{:.fixed-table}
|---|---|---|---|
|probability measures|independence|moments|multivariate analogues|
|sample spaces|random variables|conditional probability|discrete analogues|
|random events|expectation|Bayes' theorem|large number laws|
|probability spaces|variance|probability distributions|central limit theorem|

### <!--[[link]][info]-->[TBD] &thinsp; Information theory

{:.fixed-table}
|---|---|---|---|
|Shannon entropy|conditional entropy|chain rules|maximum entropy|
|joint entropy|mutual information|differential entropy|Fisher information|

### <!--[[link]][freq]-->[TBD] &thinsp; Frequentist interpretation of statistics

{:.fixed-table}
|---|---|---|---|
|discrete distributions|descriptive statistics|point estimates|regression problems|
|continuous distributions|estimation problems|confidence intervals|classification problems|
|transformations|sufficient statistics|hypothesis testing|factorial experiments|
|sampling distributions|likelihood estimators|correlation|non-parametrics|

### <!--[[link]][basic]-->[TBD] &thinsp; Classical machine learning techniques

{:.fixed-table}
|---|---|---|---|
|linear regression|perceptrons|model inference|support vectors|
|least squares|regularization|tree-based models|random forests|
|shrinkage|kernel methods|bootstrap methods|bagging and sampling|
|logistic regression|model selection|gradient boosting|ensemble techniques|

### <!--[[link]][bayes]-->[TBD] &thinsp; Probabilistic machine learning

{:.fixed-table}
|---|---|---|---|
|generative models|hierarchical models|generalized linear models|kernel techniques|
|conjugate priors|decision theory|Gaussian mixtures|Gaussian processes|
|Gaussian models|linear regression|latent linear models|adaptive basis functions|
|posterior distributions|logistic regression|sparse linear models|Markov models|

### <!--[[link]][deep]-->[TBD] &thinsp; Deep neural networks

{:.fixed-table}
|---|---|---|---|
|multi-layer networks|backpropagation|transformer models|latent variables|
|deep networks|regularization|multi-modal methods|autoencoders|
|error functions|structured distributions|graph neural networks|diffusion models|
|gradient descent|attention mechanism|sampling techniques|large-language models|


[calculus]: {{site.baseurl}}/lectures/math/

[prob]:  {{site.baseurl}}/lectures/ml/prob/
[freq]:  {{site.baseurl}}/lectures/ml/freq/
[info]:  {{site.baseurl}}/lectures/ml/info/
[bayes]: {{site.baseurl}}/lectures/ml/bayes/
[basic]: {{site.baseurl}}/lectures/ml/basic/
[deep]:  {{site.baseurl}}/lectures/ml/deep/
