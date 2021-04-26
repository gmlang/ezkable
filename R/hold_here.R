#' @title Hold table at the current position.
#'
#' @description
#' The tables created using the functions in this package will be floated by
#' default. Use this function to hold the tables at the current postion on the
#' page.
#'
#' @param tbl Data frame, the table to be displayed.
#'
#' @return markdown/tex code block for a table that can be rendered inside a R
#' markdown file when outputting a pdf document.
#'
#' @export
#' @examples inst/examples/ex-hold_here.R
hold_here = function(tbl_code) {
        tbl_code %>% kableExtra::kable_styling(latex_options="hold_position")
}
