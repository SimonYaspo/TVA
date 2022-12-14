% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pooling.R
\name{pool_data}
\alias{pool_data}
\title{Pool the data}
\usage{
pool_data(data, arms, marginal_support_strings, compare_to_zero)
}
\arguments{
\item{data}{is the dataframe containing all our data}

\item{arms}{is a vector containing the column names of all the arms}

\item{marginal_support_strings}{is a vector containing strings that represent all the marginals in the support}

\item{compare_to_zero}{is a boolean.\cr
If TRUE, the code considers that a policy dominates a marginal if all dosages are greater\cr
If FALSE, then they must also have the exact same activated arms (the zeros of the policy vectors are at identical indexes)}
}
\value{
returns the dataframe "data" with new columns: \cr
\itemize{
\item a pool_id column that gives the pool id of the observation's pool
\item one dummy column per pool_id, equal to 1 if the observation belongs to this pool id, 0 otherwise
\item one column per marginal_j, equal to 1 if the observation i is influenced by the marginal n°j, 0 otherwise. There are as many columns as marginals in the support.
\item a "pool_influences" column, with a string of the format "i_x1_x2_x3_.." where xj is equal to 1 if the marginals n°j influences the observation, 0 otherwise. This is basically the definition of the pool the observation belongs to.
\item a "pool_influences_list" column, with a string that gives all the marginals that influence the observation
}
}
\description{
Take the estimated support and pool each observation in its right pool
}
\examples{
arms = c('financial_incentive','reminder','information')
A1 = c(0,0,0,0,0,1,1,1,1,1)
A2 = c(1,1,0,0,1,1,0,0,1,1)
A3 = c(0,1,2,3,0,3,2,1,0,1)
data = data.frame(financial_incentive = A1, reminder = A2, information = A3)
marginal_support_strings = c('m_0_1_1', 'm_1_1_2', 'm_1_0_1', 'm_1_0_2')
pool_data(data,arms,marginal_support_strings,FALSE)
}
