---
title       : Visualizing Convergence
subtitle    : Reactive demonstration of the Central Limit Theorem
author      : Enzo Alda
job         : Lakebolt Research
framework   : io2012 # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js # {highlight.js, prettify, highlight}
hitheme     : tomorrow # {tomorrow, zenburn}
widgets     : [mathjax] # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, selfcontained, draft}
knit        : slidify::knit2slides
---

## Learning via interactive visualization!
### The Central Limit Theorem Reactive Demo (CLT-RD)
Students learn concepts better when they can visualize, interact, and have fun! CLT-RD is meant to:
* demonstrate the Central Limit Theorem empirically
* help students learn while having fun!
* serve as an example for building shiny apps

### How it works
CLT-RD extracts multiple samples from a randomly generated population, computes the mean of each sample, and shows a histogram of the distribution of the sample means, alongside a histogram of the population.

Note: in this version, the population follows an exponential distribution.

https://en.wikipedia.org/wiki/Central_limit_theorem
https://en.wikipedia.org/wiki/Exponential_distribution

---

## CLT-RD Parameters
### You, the students, are on the driver's seat!
Students control the following parameters of the simulation:
* Population size: the size of the population
* lambda: the 'rate' parameter of the exponential distribution
* Number of samples: the number of samples extracted from the population
* Sample size: the size of each sample (this is the most important one!)

### Central Limit Theorem in a nutshell
In the extreme case of samples of size one (N=1) the distribution of the sample means mirrors the distribution of the population. As the sample size increases, the distribution of the sample means approximates a normal distribution. The distribution of sample means has the same mean as the population. As N increases, the asymptotic variance of the distribution of sample means is <font size="+">$&#x3C3^2/N$</font> where <font size="+">$&#x3C3^2$</font> is the variance of the population</font>

---

## Empirical CLT-RD Simulation Examples

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 

---

## Acknowledgments

* Brian Caffo, PhD, Jeff Leek, PhD, Roger D. Peng, PhD
* All the talented folks at RStudio (http://www.rstudio.com/)
* Slidify and the amazing Ramnath (https://github.com/ramnathv)
* Coursera and the Johns Hopkins University (https://www.coursera.org/jhu)

### Sponsored Links
* <a href="http://www.lakebolt.com/">Lakebolt Research</a>
* <a href="http://www.zensheet.com/">ZenSheet</a>
