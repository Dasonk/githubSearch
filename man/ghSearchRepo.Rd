\name{ghSearchRepo}
\alias{ghSearchRepo}
\title{Search for repo on github}
\usage{
ghSearchRepo(repo, only.fullname = TRUE)
}
\arguments{
  \item{repo}{Character. Name of repo}

  \item{only.fullname}{Logical.  Should only the full name
  in the form "user/repo" of the results be returned?  If
  TRUE then only the full_name is returned, if FALSE then
  the entire JSON is returned as a list.}
}
\description{
Search for repo on github
}
\examples{
ghSearchRepo("pacman")
ghSearchRepo("Dmisc")
ghSearchRepo("ggplot2")
}

