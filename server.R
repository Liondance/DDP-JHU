#
# Developing Data Products Project
#
# server.R
#

library(shiny);

#
# Color Themes
#
themes <- data.frame(
    rbind(
        c("grey",     "grey69",      "grey42",      "red"),
        c("reef",     "coral",       "blue",        "red"),
        c("electric", "chartreuse1", "darkorchid1", "darkgreen"),
        c("ibiza",    "gold",        "blue",        "red"),
        c("orange",   "darkorange1", "darkorange3", "darkgreen"),
        c("babies",   "lightblue",   "pink",        "red")
    )
);

names(themes) <- c("type", "pcol", "scol", "lcol");

#' 
#' twin.plot
#'
#' plots two histograms side by side
#' the one on the left shows the distribution of a population
#' the one on the right shows the distribution of sample means
#' this version only handles an exponential distribution
#' 
#' @param P size of the entire population
#' @param lambda rate parameter for the exponential distribution
#' @param S number of samples taken from the population
#' @param N size of each sample
#' @param type (optional) theme identifier for histogram rendering
#' @param mline (optional) show true (population) mean line in histogram
#' 
twin.plot <- function(P, lambda, S, N, type="grey", mline=TRUE) {
    popl <- rexp(P, lambda);
    
    means <- NULL;
    for (i in 1:S) {
        x <- sample(popl, N, replace = T)
        means <- c(means, mean(x));
    }

    theme <- themes[themes$type == type, ];
    
    hp <- "Population";
    hs <- paste("Sample Means (N = ", toString(N), ")", sep="");

    par(mfrow = c(1,2));
    hist(popl,  breaks=21, main=hp, xlab="", col=toString(theme$pcol));
    hist(means, breaks=21, main=hs, xlab="", col=toString(theme$scol));
    if (mline) {
        abline(v = mean(popl), col=toString(theme$lcol), lwd=2);
    }
}

P <- 100000;     # population size
l <- 1;          # lambda
S <- 1000;       # number of samples
N <- 20;         # sample size
t <- "electric"; # color theme
m <- TRUE;

test <- function() {
    twin.plot(P, l, S, N, t, m);
}

shinyServer(
    function(input, output) {
        output$histograms <- renderPlot({
            twin.plot(
                input$P,
                input$lambda,
                input$S,
                input$N,
                input$theme,
                input$mline
            );
            dev.off();
        })
    }
)
