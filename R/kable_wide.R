#' @title Display wide tables.
#'
#' @description
#' This function works great if you need to fit a wide table on one page. It
#' builds on top of `kable_default()`.
#'
#' @param tbl Data frame, the table to be displayed.
#' @param font_size Number, font size of the table content. Default = 'auto',
#' which will automatically pick a font size to fit the table on the page.
#' @param ... Other arguments for `kntr::kable()`, for example, digits = 2,
#' caption = 'Table Caption', and etc.
#'
#' @return markdown/tex code block for a table that can be rendered inside a R
#' markdown file when outputting a pdf document.
#'
#' @export
#' @examples inst/examples/ex-kable_wide.R
kable_wide = function(tbl, font_size='auto', ...) {
        tbl_code = tbl %>% kable_default(...)
        if (font_size == 'auto') {
                tbl_code %>% kableExtra::kable_styling(latex_options="scale_down")
        } else {
                tbl_code %>% kableExtra::kable_styling(font_size = font_size)
        }

}
