#' @title Collapse repeated rows to multirow cell.
#'
#' @description
#' Collapse same values in columns into multirow cells. You may want to do this
#' when the table is too wide. After doing this, the readability of the table is
#' often improved.
#'
#' @param tbl_code markdown/tex code that describes the table to be displayed.
#' For example, output object from kable_default(), kable_long(), kable_wide()
#' are good candidates.
#' @param cols_idx integer vector, indices of columns to be put into multi-row
#' cells. Default is first 2 columns.
#'
#' @return markdown/tex code block for a table that can be rendered inside a R
#' markdown file when outputting a pdf document.
#'
#' @export
#' @examples inst/examples/ex-kable_collapse_rows.R
kable_collapse_rows = function(tbl_code, cols_idx = 1:2) {
        tbl_code %>% kableExtra::collapse_rows(
                cols_idx,
                row_group_label_fonts = list(list(bold = T, italic = T),
                                             list(bold = F, italic = F)),
                row_group_label_position = 'stack')
}
