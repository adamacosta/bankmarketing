% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/bank.R
\docType{data}
\name{bank}
\alias{bank}
\title{Bank data}
\format{Data frame with columns
\describe{
\item{age}{numeric}
\item{job}{categorical}
\item{marital}{categorical}
\item{education}{categorical}
\item{default}{yes/no: has credit in default?}
\item{loan}{yes/no: has personal loan?}
\item{contact}{categorical: type of contact made}
\item{month}{last contact month of the year}
\item{day_of_week}{last contact day of the week}
\item{duration}{numeric: last contact duration, in seconds}
\item{campaign}{numeric: number of contacts performed during this campaign}
\item{pdays}{numeric: number of days since last contact}
\item{previous}{numeric: number of contacts performed before this campaign}
\item{poutcome}{categorical: outcome of previous market campaign}
\item{emp.var.rate}{numeric: employment variation rate}
\item{cons.price.idx}{numeric: consumer price index}
\item{cons.conf.idx}{numeric: consumer confidence index}
\item{euribor3m}{numeric: euribor 3 month rate}
\item{nr.employed}{numeric: number of employees}
\item{y}{Outcome: has the client subscribed to a term deposite? y/n?}
}}
\source{
UCI Machine Learning Repository,
 \url{https://archive.ics.uci.edu/ml/datasets/Bank+Marketing}
}
\usage{
bank
}
\description{
The data is related with direct marketing campaigns of a
Portuguese banking institution. The marketing campaigns were based on
phone calls. Often, more than one contact to the same client was required,
in order to access if the product (bank term deposit) would be ('yes') or
not ('no') subscribed.
}
\examples{
bank
}
\keyword{datasets}

