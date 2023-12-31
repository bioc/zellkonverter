% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/validation.R
\name{expectSCE}
\alias{expectSCE}
\title{Expect SCE}
\usage{
expectSCE(sce, expected)
}
\arguments{
\item{sce}{A \linkS4class{SingleCellExperiment} object.}

\item{expected}{A template \linkS4class{SingleCellExperiment} object to
compare to.}
}
\value{
\code{TRUE} invisibly if checks pass
}
\description{
Test that a SingleCellExperiment matches an expected object. Designed to be
used inside \code{testhat::test_that()} during package testing.
}
\author{
Luke Zappia
}
