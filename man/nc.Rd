% Generated by roxygen2 (4.0.1): do not edit by hand
\name{nc}
\alias{nc}
\alias{nc.stratTen}
\alias{nc.ten}
\title{Add \bold{n}umber \bold{c}ensored.}
\usage{
nc(x, ...)

\method{nc}{ten}(x, ...)

\method{nc}{stratTen}(x, ...)
}
\arguments{
\item{x}{An object of class \code{ten} or \code{stratTen}.}

\item{...}{Additional arguments (not implemented).}
}
\value{
The original object, with new column(s) added indicating the
number censored at each time point, depending on \code{attr(x, "shape")}:
\item{"long"}{the new column, \code{c}, gives
 the number censored at each timepoint, by covariate group.}
\item{"wide"}{new columns, beginning with \code{c_}, give
 the number censored at each timepoint, by covariate group.
 There is an additional \code{nc} column giving
 the \emph{total} number censored at each timepoint.}
A \code{stratTen} object has each \code{ten} element in the
\code{list} modified as above.
}
\description{
Add \bold{n}umber \bold{c}ensored.


}
\examples{
data("kidney", package="KMsurv")
t1 <- ten(survfit(Surv(time, delta) ~ type, data=kidney))
nc(t1)
nc(asWide(t1))
## stratified model
data("pbc", package="survival")
t1 <- ten(coxph(Surv(time, status==2) ~ log(bili) + age + strata(edema), data=pbc))
nc(t1)
}

