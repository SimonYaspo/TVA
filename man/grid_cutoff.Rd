% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/threshold_functions.R
\name{grid_cutoff}
\alias{grid_cutoff}
\title{Cutoff grid}
\usage{
grid_cutoff(
  data,
  arms,
  y,
  fes = c(),
  w = NULL,
  estim_func = "pval_OSE",
  compare_to_zero = FALSE,
  clusters = NULL
)
}
\arguments{
\item{data}{is the dataframe containing all our data}

\item{arms}{is a vector containing the column names of all the arms}

\item{y}{is the column name of the outcome of interest}

\item{fes}{is a vector containing the column names of all the fixed effects}

\item{w}{is the column name of the weights}

\item{estim_func}{is the support estimation function we want to use, either pval_OSE or pval_MSE}

\item{compare_to_zero}{is a boolean.\cr
If TRUE, the code considers that a policy dominates a marginal if all dosages are greater\cr
If FALSE, then they must also have the exact same activated arms (the zeros of the policy vectors are at identical indexes)}
}
\value{
returns a dataframe with columns:
\itemize{
\item 'pval_cutoff': all the p-values
\item 'marginal_support_size' : the corresponding support size one would get for each of these p-values
\item 'number_of_pools': the corresponding number of pools one would get for such a support
}
}
\description{
Cutoff grid
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
data = data.frame(financial_incentive = A1, reminder = A2, information = A3, fes_1 = F1, outcome = Y, weights=W)
grid_pval(data=data,arms=arms,y=y,fes=fes,w=w,compare_to_zero=FALSE)
}
