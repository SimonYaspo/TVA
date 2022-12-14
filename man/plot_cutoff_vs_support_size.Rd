% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/threshold_functions.R
\name{plot_cutoff_vs_support_size}
\alias{plot_cutoff_vs_support_size}
\title{Plot cutoff vs marginal support size}
\usage{
plot_cutoff_vs_support_size(
  data,
  arms,
  y,
  fes = c(),
  w = NULL,
  estim_func = "pval_OSE",
  compare_to_zero = FALSE
)
}
\arguments{
\item{data}{is the dataframe containing all our data}

\item{arms}{is a vector containing the column names of all the arms}

\item{y}{is the column name of the outcome of interest}

\item{fes}{(optional) is a vector containing the column names of all the fixed effects}

\item{w}{(optional) is the column name of the weights}

\item{estim_func}{(optional) is the estimation method (pval_OSE, pval_MSE or beta_OSE), pval_OSE by default}

\item{compare_to_zero}{(optional) is a boolean.\cr
If TRUE, the code considers that a policy dominates a marginal if all dosages are greater\cr
If FALSE, then they must also have the exact same activated arms (the zeros of the policy vectors are at identical indexes)}
}
\value{
returns the plot of the ordered betas, allowing to see the corresponding size of support for each beta cutoff in the beta one-step elimination
}
\description{
Plot cutoff vs marginal support size for each method. \cr
}
\examples{
arms = c('financial_incentive','reminder','information')
fes = c('fes_1')
y = 'outcome'
w = 'weights'
A1 = c(0,0,0,0,0,1,1,1,1,1)
A2 = c(1,1,0,0,1,1,0,0,1,1)
A3 = c(0,1,2,3,0,3,2,1,0,1)
F1 = c(0,1,0,0,0,1,0,1,0,0)
Y  = c(5,4,3,5,4,5,4,2,3,2)
W  = c(1,1,1,2,1,2,2,1,1,2)
estim_func = "pval_MSE"
data = data.frame(financial_incentive = A1, reminder = A2, information = A3, fes_1 = F1, outcome = Y, weights=W)
plot_cutoff_vs_support_size(data=data, arms=arms, y=y, fes=fes, w=w, estim_func=estim_func, compare_to_zero=FALSE)

}
