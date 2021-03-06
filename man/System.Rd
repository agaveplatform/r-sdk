% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/System.r
\docType{data}
\name{System}
\alias{System}
\title{System Class}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
System
}
\description{
System Class
}
\section{Fields}{

\describe{
\item{\code{description}}{Verbose description of this system.}

\item{\code{environment}}{Environment variables to set upon login prior to job submission.}

\item{\code{id}}{Unique identifier for this system.}

\item{\code{isDefault}}{Is the system the default for the authenticated user?}

\item{\code{isPublic}}{Is the system publicly available?}

\item{\code{lastModified}}{The date this system was last modified in ISO 8601 format.}

\item{\code{name}}{Common name for this system.}

\item{\code{revision}}{The number of times this app has been updated.}

\item{\code{scratchDir}}{The scratch directory where job execution directories will be created at runtime. The workDir is used if this is not specified.}

\item{\code{site}}{The site associated with this system.}

\item{\code{status}}{}

\item{\code{storage}}{}

\item{\code{type}}{}

\item{\code{uuid}}{The uuid of this system.}
}}

\keyword{datasets}
