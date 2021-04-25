#' @title Display table in default mode.
#'
#' @description
#' This function displays the given table at the exact position on the pdf page
#' where the table is inserted. It calls `knitr::kable()` under the hood, with
#' `booktabs=TRUE` and `format='latex'`.
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
        tbl %>% knitr::kable(format = "latex", booktabs = TRUE, ...) %>%
                kableExtra::kable_styling(latex_options = c("hold_position"))
}
