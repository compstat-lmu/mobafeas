% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/InfillCrits.R
\name{acquisition}
\alias{acquisition}
\title{Acquisition Function

Evaluates the infill criterion if cached information about the population is present.

If this is not the case, the criterion can be converted to an \code{MBOInfillCrit} using
\code{as.MBOInfillCrit()} and then executed directly.}
\usage{
acquisition(infobj, suggestions, population.info)
}
\arguments{
\item{infobj}{\code{[Infill]} The acquisition function object}

\item{suggestions}{\code{[data.frame]} points to evaluate, with columns \code{"response"}, \code{"se"}, \code{"c2.value"}}

\item{population.info}{\code{[list]} with elements:\
\itemize{
\item \code{$nadir} \code{[numeric(2)]} nadir point.\
\item \code{paretofront} \code{[matrix]} pareto front of values seen so far: one column per individuum, two rows\
where the first row is the modeled one and the second row is the known one. Columns should be ordered
by second row increasing.
\item \code{$pointdata} \code{[data.frame]} points known so far, with columns value, response, se, c2.value\
\item \code{$nugget} \code{[numeric(1)]} model nugget
}}
}
\value{
\code{[numeric]} vector of length \code{nrow(suggestions)} indicating desirability of each point. Larger values are better.
}
\description{
Acquisition Function

Evaluates the infill criterion if cached information about the population is present.

If this is not the case, the criterion can be converted to an \code{MBOInfillCrit} using
\code{as.MBOInfillCrit()} and then executed directly.
}
\seealso{
Other Infill Criteria: \code{\link{Infill}},
  \code{\link{as.MBOInfillCrit}}
}
\concept{Infill Criteria}
