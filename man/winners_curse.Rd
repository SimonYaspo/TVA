% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/winners_curse.R
\name{winners_curse}
\alias{winners_curse}
\title{Winners curse}
\usage{
winners_curse(pooled_ols, pool_ids, alpha = 0.05, beta = NULL)
}
\arguments{
\item{pooled_ols}{the result of the final pooled OLS}

\item{pool_ids}{the names of the pool id dummy columns which coefficients are in pooled_ols}

\item{alpha}{is the alpha used in the winners curse algorithm, default to 0.05}

\item{beta}{is the beta used in the winners curse algorithm, default to NULL\cr
if NULL, beta will be computed with beta = alpha / 10}
}
\value{
returns a list with the median unbiased estimate of the best effect and the alpha confidence interval lower and upper bounds
}
\description{
Apply the winners curse algorithm to the final pooled OLS
}
