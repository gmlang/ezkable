#' ---
#' title: Demo of `kable_wide`
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

# table 1, auto fit within page, float the table by default
btc %>% slice((n()-30): n()) %>% kable_wide %>% print

# table 2, supply a font size, float the table by default
btc %>% slice((n()-30): n()) %>% kable_wide(font_size = 5) %>% print
