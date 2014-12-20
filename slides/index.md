---
title       : Central Limit Theorem
subtitle    : Empirical Demonstration
author      : Enzo Alda
job         : Lakebolt Research
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : zenburn      # {tomorrow, zenburn}
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

### Purpose
* To demonstrate the Central Limit Theorem empirically
* To show how shiny and slidify can be used
* To have fun!

### Setup
1. Have RStudio installed
2. more ...
3. ... and more ...

--- .class #id 

## Parameters

--- .class #id 

## Formula

The variance of the sampling distribution is <font size="+">$s^2/N$</font> where <font size="+">$s^2$</font> is the variance of the population</font>

--- .class #id 

## Example

--- .class #id 


```r
twin.plot <- function(P, lambda, S, N, type="grey") {
    popl <- rexp(P, lambda);
    
    means <- NULL;
    for (i in 1:S) {
        x <- sample(popl, N, replace = T)
        means <- c(means, mean(x));
    }

    theme <- themes[themes$type == type, ];
    
    hp <- "Histogram of Population";
    hs <- "Histogram of Sample Means";

    par(mfrow = c(1,2));
    hist(popl,  breaks=21, main=hp, xlab="", col=toString(theme$pcol));
    hist(means, breaks=21, main=hs, xlab="", col=toString(theme$scol));
}
```

--- .class #id 

## Sample plot

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png) 

---

## Acknowledgments

* Coursera
* Brian Caffo, PhD, Jeff Leek, PhD, Roger D. Peng, PhD
* Johns Hopkins University
* RStudio
* Slidify

### Sponsored Links
* <a href="http://www.lakebolt.com/">Lakebolt Research</a>
* <a href="http://www.zensheet.com/">ZenSheet</a>
