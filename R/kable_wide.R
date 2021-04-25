#' @title Display wide tables.
#'
#' @description
#' This function works great if you need to display a wide table that can't be
#' fit on one page. It builds on top of `kable_default()`.
#'
#' @param tbl Data frame, the table to be displayed.
#' @param ... Other arguments for `kntr::kable()`, for example, digits = 2,
#' caption = 'Table Caption', and etc.
#'
#' @return markdown/tex code block for a table that can be rendered inside a R
#' markdown file when outputting a pdf document.
#'
#' @export
#' @examples inst/examples/ex-kable_wide.R
kable_wide = function(tbl, ...) {
        tbl %>% kable_default(...) %>%
                kableExtra::kable_styling(latex_options = c("scale_down"))
}
