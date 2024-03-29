% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CADEreg.R
\name{CADEreg}
\alias{CADEreg}
\title{Regression-based method for the complier average direct effect}
\usage{
CADEreg(data)
}
\arguments{
\item{data}{A data frame containing the relevant variables. The names for the variables should be: ``Z'' for the treatment assignment,  ``D''  for the actual received treatment, ``Y'' for the outcome, ``A'' for the treatment assignment mechanism and ``id'' for the cluster ID. The variable for the cluster id should be a factor.}
}
\value{
A list of class \code{CADEreg} which contains the following items:
\item{CADE1}{ The point estimate of CADE(1).  } \item{CADE0}{ The point estimate of CADE(0).  } 
\item{var1.clu}{ The cluster-robust variance of CADE(1).   } \item{var0.clu}{ The cluster-robust variance of CADE(0).  }
\item{var1.clu.hc2}{ The cluster-robust HC2 variance of CADE(1).   } 
\item{var0.clu.hc2}{ The cluster-robust HC2 variance of CADE(0).    } 
\item{var1.hc2}{ The  HC2 variance of CADE(1).    } 
\item{var0.hc2}{ The  HC2 variance of CADE(0).    } 
\item{var1.ind}{ The  individual-robust variance of CADE(1).    } 
\item{var0.ind}{ The  individual-robust variance of CADE(0).    } 
\item{var1.reg}{ The  proposed variance of CADE(1).    } 
\item{var0.reg}{ The  proposed variance of CADE(0).    }
}
\description{
This function computes the point estimates of the complier average direct effect (CADE) and four
 different variance estimates: the HC2 variance, the cluster-robust variance, the cluster-robust HC2
 variance and the variance proposed in the reference. The estimators calculated using this function
 are cluster-weighted, i.e., the weights are equal for each cluster. To obtain the indivudal-weighted
 estimators, please multiply the recieved treatment and the outcome by \code{n_jJ/N}, where
 \code{n_j} is the number of individuals in cluster \code{j}, \code{J} is the number of clusters and 
 \code{N} is the total number of individuals.
}
\details{
For the details of the method implemented by this function, see the
references.
}
\references{
Kosuke Imai, Zhichao Jiang and Anup Malani (2021).
\dQuote{Causal Inference with Interference and Noncompliance in the Two-Stage Randomized Experiments}, \emph{Journal of the American Statistical Association}.
}
\author{
Kosuke Imai, Department of Government and Department of Statistics, Harvard University
\email{imai@Harvard.Edu}, \url{https://imai.fas.harvard.edu};
Zhichao Jiang, Department of Politics, Princeton University
\email{zhichaoj@princeton.edu}.
}
\keyword{experiments}
\keyword{randomized}
\keyword{two-stage}
