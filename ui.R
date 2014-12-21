#
# Developing Data Products Project
#
# ui.R
#

library(shiny);

shinyUI(
    fluidPage(
        fluidRow(
            h3("Central Limit Theorem - Reactive Demo in Shiny"),
            p("CLT-RD extracts multiple samples from a randomly generated population, which follows an exponential distribution, and shows a histogram of the sample means, alongside a histogram of the population."),
            h4("instructions:"),
            p("Observe how the distribution of sample means converges to a normal distribution as the sample size is increased."),
            p("Increasing the number of samples improves the 'histogram resolution' of the sample mean distribution."),
            p("Changing the size of the population has little effect, unless reduced to only a few data points."),
            p("Note that CLT-RD samples from the population with replacement."),
            p("The parameter lambda affects the expected mean of the population. The expected mean of an exponential distribution is 1/lambda.")
        ),
        sidebarPanel(
            h3("Parameters"),
            sliderInput(
                'P',
                "Population size",
                10000,
                min=10,
                max=100000,
                step=1
            ),
            sliderInput(
                'lambda',
                "Rate (lambda)",
                1,
                min=0.1,
                max=4,
                step=0.1
            ),
            sliderInput(
                'S',
                "Number of samples",
                1000,
                min=1,
                max=1000,
                step=1
            ),
            sliderInput(
                'N',
                "Sample size",
                1,
                min=1,
                max=40,
                step=1
            ),
            checkboxInput(
                'mline',
                "Mean line",
                TRUE
            ),
            radioButtons(
                "theme",
                "Theme",
                c(
                    "Two Shades of Grey"    = "grey",
                    "Coral Reef"            = "reef",
                    "Electric Youth"        = "electric",
                    "Too Much Fun in Ibiza" = "ibiza",
                    "Clockwork Orange"      = "orange",
                    "Two Babies"            = "babies"
                ),
                selected = "ibiza"
            )
        ),
        mainPanel(
            plotOutput('histograms')
        )
    )
)
