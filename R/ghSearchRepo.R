
#' Search for repo on github
#' 
#' Search for repo on github
#' 
#' @param repo Character. Name of repo
#' @param user character. If you want to only search for repositories for a specific user.
#' @param language character. If you want to specify a programming language for the repository.
#' @param only.fullname Logical.  Should only the full name in the form "user/repo"
#'  of the results be returned?  If TRUE then only the full_name is returned, if FALSE then
#'  the entire JSON is returned as a list.
#' @import RCurl
#' @import RJSONIO
#' @export
#' @examples
#' \dontrun{
#' # Requires internet connection
#' ghSearchRepo("pacman")
#' ghSearchRepo("Dmisc")
#' ghSearchRepo("ggplot2")
#' 
#' # Get a list of packages by "Dasonk"
#' ghSearchRepo("", user = "Dasonk")
#' }
ghSearchRepo <- function(repo, user = NULL, language = "R", only.fullname = TRUE){
    
    if(!is.null(user)){
        user <- paste0("+user:", user)
    }
    if(!is.null(language)){
        language <- paste0("+language:", language)
    }
    search <- paste0("https://api.github.com/search/repositories?q=", 
                   repo, 
                   user, 
                   language)
    response <- getURL(search, ssl.verifypeer = FALSE, useragent = "RCurl")
    output <- fromJSON(response)
    if(output[["total_count"]] == 0){
        return(NULL)
    }
    
    if(only.fullname){
        output <- sapply(output[["items"]], "[[", "full_name")
    }
    output
}