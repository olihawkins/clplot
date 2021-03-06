% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scales.R
\name{get_commonslib_palette}
\alias{get_commonslib_palette}
\title{Return a function which interpolates a commonslib color palette}
\usage{
get_commonslib_palette(palette = "main", reverse = FALSE, ...)
}
\arguments{
\item{palette}{Name of palette in \code{commonslib_palettes}.}

\item{reverse}{Boolean to indicate whether the palette should be reversed.}

\item{...}{Additional arguments to pass to \code{colorRampPalette}.}
}
\description{
Return a function which interpolates a commonslib color palette
}
