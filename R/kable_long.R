#' @title Display long tables.
#'
#' @description
#' This function works great if you need to display a long table that can't be
#' fit on one page. It builds on top of `kable_default()`.
#'
#' @param tbl Data frame, the table to be displayed.
#' @param font_size Number, font size (default = 8) of the table content.
#' @param ... Other arguments for `kntr::kable()`, for example, digits = 2,
#' caption = 'Table Caption', and etc.
#'
#' @return markdown/tex code block for a table that can be rendered inside a R
#' markdown file when outputting a pdf document.
#'
#' @export
#' @examples inst/examples/ex-kable_long.R
kable_long = function(tbl, font_size = 8, ...) {
        tbl %>% kable_default(longtable = TRUE, ...) %>%
                kableExtra::kable_styling(latex_options = c("repeat_header"),
                                          font_size = font_size)
}
