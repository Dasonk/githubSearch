\name{ghSearchRepo}
\alias{ghSearchRepo}
\title{Search for repo on github}
\usage{
ghSearchRepo(repo, user = NULL, language = "R", only.fullname = TRUE)
}
\arguments{
  \item{repo}{Character. Name of repo}

  \item{user}{character. If you want to only search for
  repositories for a specific user.}

  \item{language}{character. If you want to specify a
  programming language for the repository.}

  \item{only.fullname}{Logical.  Should only the full name
  in the form "user/repo" of the results be returned?  If
  TRUE then only the full_name is returned, if FALSE then
  the entire JSON is returned as a list.}
}
\description{
Search for repo on github
}
\examples{
\dontrun{
# Requires internet connection
ghSearchRepo("pacman")
ghSearchRepo("Dmisc")
ghSearchRepo("ggplot2")

# Get a list of packages by "Dasonk"
ghSearchRepo("", user = "Dasonk")
}
}

