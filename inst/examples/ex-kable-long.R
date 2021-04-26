#' ---
#' title: Demo of `kable_long` and `to_landscape`
#' author: "Guangming Lang"
#' date: report generated on `r Sys.Date()`
#' geometry: "left=1cm,right=1cm,top=1.5cm,bottom=2cm"
#' output: pdf_document
#' header-includes:
#' - \usepackage{booktabs}
#' - \usepackage{pdflscape}
#' ---

#+ include = FALSE
knitr::opts_chunk$set(comment = "", tidy = F, echo = F, warning = F,
                      message = F, fig.width = 12, fig.height = 6)

#+ results = "asis"

library(ezkable)
library(dplyr)
data(btc)

# put a long table in landscape
btc %>% kable_long(font_size=6.5, caption = 'BTC Trading Simulation', digits=2) %>%
        to_landscape(margin = '1.5cm') %>% print
