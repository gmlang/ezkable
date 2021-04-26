#' @title Display table in default mode.
#'
#' @description
#' This function calls `knitr::kable()` under the hood, with `booktabs=TRUE` and
#' `format='latex'`.
#'
#' @param tbl Data frame, the table to be displayed.
#' @param ... Other arguments for `kntr::kable()`, for example, digits = 2,
#' caption = 'Table Caption', and etc.
#'
#' @return markdown/tex code block for a table that can be render inside a R
#' markdown file when outputting a pdf document.
#'
#' @export
#' @examples inst/examples/ex-kable_default.R
kable_default = function(tbl, ...) {
        tbl %>% knitr::kable(format = "latex", booktabs = TRUE,
                             label = runif(1, min = 1, max = 1000000), ...)
}

