% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{icon_symbol}
\alias{icon_symbol}
\title{Item Icon Helper}
\usage{
icon_symbol(name, ...)
}
\arguments{
\item{name}{Name of the icon, corresponds to marker_icon.}

\item{...}{Additional arguments.}
}
\value{
Adds an icon to a dataframe for use with an item chart.
}
\description{
Item Icon Helper
}
\examples{
data <- data.frame(
  x = c(3, 5),
  color = c("green", "blue")
)
data <- data \%>\%
  dplyr::mutate(
  icon = "person",
  uri = purrr::map2_chr(icon, color, ~ icon_symbol(.x, fill = .y)),
  marker = purrr::map(uri, ~ list(symbol = stringr::str_glue("url({data_uri})", data_uri = .x)))
  )

}
