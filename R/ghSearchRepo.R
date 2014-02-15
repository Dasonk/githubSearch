
#' Search for repo on github
#' 
#' Search for repo on github
#' 
#' @param repo Character. Name of repo
#' @param only.fullname Logical.  Should only the full name in the form "user/repo"
#'  of the results be returned?  If TRUE then only the full_name is returned, if FALSE then
#'  the entire JSON is returned as a list.
#' @import RCurl
#' @import RJSONIO
#' @export
#' @examples
#' ghSearchRepo("pacman")
#' ghSearchRepo("Dmisc")
#' ghSearchRepo("ggplot2")
ghSearchRepo <- function(repo, only.fullname = TRUE){
    srch <- paste0("https://api.github.com/search/repositories?q=", repo, "+language:R")
    response <- getURL(srch, ssl.verifypeer = FALSE, useragent = "RCurl")
    output <- fromJSON(response)
    if(output[["total_count"]] == 0){
        return(NULL)
    }
    
    if(only.fullname){
        output <- sapply(output[["items"]], "[[", "full_name")
    }
    output
}