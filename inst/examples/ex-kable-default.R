#' ---
#' title: Demo of `kable_default`
#' author: "Guangming Lang"
#' date: report generated on `r Sys.Date()`
#' geometry: "left=0.8cm,right=0.8cm,top=1.5cm,bottom=2cm"
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

# table 1, auto create a label for the table
btc %>% select(date, price_usd_close, open_interest) %>%
        slice((n()-30): n()) %>%
        kable_default %>% print

# table 2, supply a label for the table
btc %>% select(date, price_usd_close, open_interest) %>%
        slice((n()-30): n()) %>%
        kable_default(label = 'recent 30 days') %>% print
