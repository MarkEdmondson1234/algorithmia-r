% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataDirectory.r
\docType{class}
\name{AlgorithmiaDataDirectory-class}
\alias{AlgorithmiaDataDirectory}
\alias{AlgorithmiaDataDirectory-class}
\title{DataDirectory object to interact with directories. Supports Algorithmia data
directories, S3, Dropbox and more coming soon!
To create one, call: `client$dir("directory_path")`}
\description{
DataDirectory object to interact with directories. Supports Algorithmia data
directories, S3, Dropbox and more coming soon!
To create one, call: `client$dir("directory_path")`
}
\section{Fields}{

\describe{
\item{\code{client}}{Reference to the AlgorithmiaClient object that has the credentials
necessary to make API calls.}

\item{\code{dataDirectoryUrl}}{Convenience field that holds "/v1/data/" + dataDirectoryPath}

\item{\code{dataDirectoryPath}}{The path of to the directory}
}}
\section{Methods}{

\describe{
\item{\code{create(acl = NULL)}}{Creates the directory with the ACL provided.}

\item{\code{delete(force = FALSE)}}{Deletes the directory. If the directory is not empty, it will fail unless `force`
is set to TRUE.}

\item{\code{dir(name)}}{Returns an AlgorithmiaDataDirectory object for the child directory.}

\item{\code{dirs()}}{Returns an AlgorithmiaDirectoryIterator of all the child directories.}

\item{\code{exists()}}{Returns TRUE if this directory exists. FALSE, if it does not.}

\item{\code{file(name)}}{Returns an AlgorithmiaDataFile object for the child file.}

\item{\code{files()}}{Returns an AlgorithmiaDirectoryIterator of all the child files.}

\item{\code{getName()}}{Returns the name of the innermost directory.}

\item{\code{getParent()}}{Returns the url for the parent directory (everything but the innermost directory).}

\item{\code{getPermissions()}}{Returns the AlgorithmiaAcl object representing the permissions of the directory.}

\item{\code{updatePermissions(acl)}}{Updates the permissions of the directory. Currently supported ACLs are:
`ReadAcl.PUBLIC`, `ReadAcl.PRIVATE`, and `ReadAcl.MY_ALGORITHMS`.}
}}

