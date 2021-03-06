% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hold_here.R
\name{hold_here}
\alias{hold_here}
\title{Hold table at the current position.}
\usage{
hold_here(tbl_code)
}
\arguments{
\item{tbl}{Data frame, the table to be displayed.}
}
\value{
markdown/tex code block for a table that can be rendered inside a R
markdown file when outputting a pdf document.
}
\description{
The tables created using the functions in this package will be floated by
default. Use this function to hold the tables at the current postion on the
page.
}
\examples{
inst/examples/ex-hold_here.R
}
