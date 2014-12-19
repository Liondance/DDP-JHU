#
# Developing Data Products Project
#
# server.R
#

library(shiny)

themes <- data.frame(
    rbind(
        c("grey", "grey42", "grey69"),
        c("ibiza", "yellow", "blue"),
        c("orange", "darkorange", "darkorange"),
        c("babies", "lightblue", "pink")
    )
);
names(themes) <- c("type", "pcol", "scol");

shinyServer(
    function(input, output) {
        output$clt_plot <- renderPlot({

            P <- input$P;
            lambda <- input$lambda;
            popl <- rexp(P, lambda);

            S <- input$S;
            N <- input$N;
            means <- NULL;
            for (i in 1:S) {
                x <- sample(popl, N, replace = T)
                means <- c(means, mean(x));
            }

            type <- input$theme;
            theme <- themes[themes$type == type, ];

            par(mfrow = c(1,2));
            hist(popl,  breaks=21, col=toString(theme$pcol));
            hist(means, breaks=21, col=toString(theme$scol));
        })
    }
)
