% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kable_long.R
\name{kable_long}
\alias{kable_long}
\title{Display long tables.}
\usage{
kable_long(tbl, font_size = 8, ...)
}
\arguments{
\item{tbl}{Data frame, the table to be displayed.}

\item{font_size}{Number, font size (default = 8) of the table content.}

\item{...}{Other arguments for \code{kntr::kable()}, for example, digits = 2,
caption = 'Table Caption', and etc.}
}
\value{
markdown/tex code block for a table that can be rendered inside a R
markdown file when outputting a pdf document.
}
\description{
This function works great if you need to display a long table that expands
across multiple pages. It builds on top of \code{kable_default()}.
}
\examples{
inst/examples/ex-kable_long.R
}
