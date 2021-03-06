% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/JobSubmission.r
\docType{data}
\name{JobSubmission}
\alias{JobSubmission}
\title{JobSubmission Class}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
JobSubmission
}
\description{
This represents the request made to the Agave jobs api to run a registered application.
}
\section{Fields}{

\describe{
\item{\code{archive}}{Whether the output from this job should be archived. If true, all new files created by this application's execution will be archived to the archivePath in the user's default storage system.}

\item{\code{archivePath}}{The path of the archive folder for this job on the archiveSystem. Defaults to default storage system of the user}

\item{\code{archiveSystem}}{The system on which the job data will be archived}

\item{\code{inputs}}{The application specific input files needed for this job. These vary from application to application and should be entered as multiple individual parameters in the form. Inputs may be given as relative paths in the user's default storage system or as URI. If a URI is given, the data will be staged in by the IO service and made avaialble to the application at run time.}

\item{\code{name}}{The name of the job.}

\item{\code{maxMemory}}{The maximum amount of memory needed for this application to run given in GB.}

\item{\code{nodeCount}}{The number of nodes this application should utilize while running. If the application is not of executionType PARALLEL, this should be 1.}

\item{\code{notifications}}{An array of notifications you wish to receive.}

\item{\code{parameters}}{The application specific parameters needed for this job. These vary from application to application and should be entered as multiple individual parameters in the form. The actual dataType will be determined by the application description.}

\item{\code{processorsPerNode}}{The number of processors this application should utilize while running.}

\item{\code{batchQueue}}{The queue to which this job should be submitted. This is optional and only applies when the execution system has a batch scheduler.}

\item{\code{maxRunTime}}{The estimated compute time needed for this application to complete given in hh:mm:ss format.}

\item{\code{appId}}{The unique name of the application being run by this job. This must be a valid application that the calling user has permission to run.}
}}

\keyword{datasets}
