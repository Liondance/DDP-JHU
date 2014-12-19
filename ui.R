#
# Developing Data Products Project
#
# ui.R
#

library(shiny);

shinyUI(
    pageWithSidebar(
        headerPanel(
            h2("Central Limit Theorem"),
            h3("Illustrated in Shiny")
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
                "Number of Samples",
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
            radioButtons(
                "theme",
                "Theme:",
                c(
                    "Two Shades of Grey"    = "grey",
                    "Too Much Fun in Ibiza" = "ibiza",
                    "Clockwork Orange"      = "orange",
                    "Two Babies"            = "babies"
                )
            )
        ),
        mainPanel(
            plotOutput('clt_plot')
        )
    )
)
