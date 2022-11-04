% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reticulate.R
\name{r-py-conversion}
\alias{r-py-conversion}
\alias{py_to_r.numpy.ndarray}
\title{Convert between Python and R objects}
\usage{
\method{py_to_r}{numpy.ndarray}(x)
}
\arguments{
\item{x}{A Python object.}
}
\value{
An \R object, as converted from the Python object.
}
\description{
Convert between Python and R objects
}
\details{
These functions are extensions of the default conversion functions in the
\code{reticulate} package for the following reasons:
\itemize{
\item \code{numpy.ndarray} - Handle conversion of \strong{numpy} recarrays
}
}
\seealso{
\code{\link[reticulate:r-py-conversion]{reticulate::py_to_r()}} for the base \code{reticulate} functions
}
\author{
Luke Zappia
}