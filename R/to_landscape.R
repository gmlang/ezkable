#' @title Change the table display to landscape.
#'
#' @description
#' After applying `kable_long()` or `kable_wide()` to a table, the resulting
#' display sometimes can still fail to fit on one page. When that happens, you
#' can apply this function to change the table display to landscape.
#'
#' @param tbl_code markdown/tex code that describes the table to be displayed.
#' For example, output object from kable_default(), kable_long(), kable_wide()
#' are good candidates.
#'
#' @return markdown/tex code block for a table that can be rendered inside a R
#' markdown file when outputting a pdf document.
#'
#' @export
#' @examples inst/examples/ex-to_landscape.R
to_landscape = function(tbl_code, margin='1cm') {
        tbl_code %>% kableExtra::landscape(margin = margin)
}


