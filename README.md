githubSearch
==========

The `githubSearch` package provides functionality to search to see if a package exists
on github.  The idea for this is to eventually be used in the [pacman](https://github.com/trinker/pacman) package to allow users to easily find the packages they want on github.
    
## Installation

Currently there isn't a release on [CRAN](http://cran.r-project.org/).

You can, however, download the [zip ball](https://github.com/Dasonk/githubSearch/zipball/master) or [tar ball](https://github.com/Dasonk/githubSearch/tarball/master), decompress and run `R CMD INSTALL` on it, or use the **devtools** package to install the development version:

```r
## Make sure your current packages are up to date
update.packages()
## devtools is required
library(devtools)
install_github("githubSearch", "Dasonk")
```

## Example use

```r
> ghSearchRepo("pacman")
[1] "trinker/pacman"
> ghSearchRepo("timestamp")
[1] "Dasonk/timestamp"
> ghSearchRepo("ggplot2")
 [1] "hadley/ggplot2"                         
 [2] "echen/ggplot2-tutorial"                 
 [3] "ggobi/ggally"                           
 [4] "cosname/ggplot2-translation"            
 [5] "dkahle/ggmap"                           
 [6] "wisc-viz/ggplot2"                       
 [7] "DublinR/ggplot2"                        
 [8] "jkeirstead/r-slopegraph"                
 [9] "vqv/ggbiplot"                           
[10] "moosik/learning-ggplot2"                
[11] "genome-vendor/r-cran-ggplot2"           
[12] "blancavg/ggplot2-basics"                
[13] "rjoomen/ggplot2-additions"              
[14] "mperdomo1/worldbank-consumption-ggplot2"
[15] "hadley/ggplot2-bayarea"                 
[16] "tdhock/ggplot2-poster"                  
[17] "pablobarbera/Rdataviz"                  
[18] "briatte/ggnet"                          
[19] "laurieKell/ggplotFL"                    
[20] "hadley/spatialVis"                      
[21] "mat/rfun"                               
[22] "JestonBlu/ggthemes"                     
[23] "idrisr/ggplot2_book"                    
[24] "simonbyrne/ggfunnel"                    
[25] "cttobin/ggthemr"                        
[26] "briatte/ggcorr"                         
[27] "garrettgman/ggsubplot"                  
[28] "tengfei/ggbio"                          
[29] "Protonk/gglc"                           
[30] "DublinR/ggplot2workshop"
```
We can also request the full JSON response as a list:

```r
> ghSearchRepo("pacman", only.fullname = FALSE)
$total_count
[1] 1

$items
$items[[1]]
$items[[1]]$id
[1] 4485632

$items[[1]]$name
[1] "pacman"

$items[[1]]$full_name
[1] "trinker/pacman"

$items[[1]]$owner
$items[[1]]$owner$login
[1] "trinker"

$items[[1]]$owner$id
[1] 1763278

$items[[1]]$owner$avatar_url
[1] "https://gravatar.com/avatar/52bb4cb1f3296130cfefa683a619e0ab?d=https%3A%2F%2Fidenticons.github.com%2F016f07c89cdca482153105506ae8220e.png&r=x"

$items[[1]]$owner$gravatar_id
[1] "52bb4cb1f3296130cfefa683a619e0ab"

$items[[1]]$owner$url
[1] "https://api.github.com/users/trinker"

$items[[1]]$owner$html_url
[1] "https://github.com/trinker"

$items[[1]]$owner$followers_url
[1] "https://api.github.com/users/trinker/followers"

$items[[1]]$owner$following_url
[1] "https://api.github.com/users/trinker/following{/other_user}"

$items[[1]]$owner$gists_url
[1] "https://api.github.com/users/trinker/gists{/gist_id}"

$items[[1]]$owner$starred_url
[1] "https://api.github.com/users/trinker/starred{/owner}{/repo}"

$items[[1]]$owner$subscriptions_url
[1] "https://api.github.com/users/trinker/subscriptions"

$items[[1]]$owner$organizations_url
[1] "https://api.github.com/users/trinker/orgs"

$items[[1]]$owner$repos_url
[1] "https://api.github.com/users/trinker/repos"

$items[[1]]$owner$events_url
[1] "https://api.github.com/users/trinker/events{/privacy}"

$items[[1]]$owner$received_events_url
[1] "https://api.github.com/users/trinker/received_events"

$items[[1]]$owner$type
[1] "User"

$items[[1]]$owner$site_admin
[1] FALSE


$items[[1]]$private
[1] FALSE

$items[[1]]$html_url
[1] "https://github.com/trinker/pacman"

$items[[1]]$description
[1] "A package management package for R"

$items[[1]]$fork
[1] FALSE

$items[[1]]$url
[1] "https://api.github.com/repos/trinker/pacman"

$items[[1]]$forks_url
[1] "https://api.github.com/repos/trinker/pacman/forks"

$items[[1]]$keys_url
[1] "https://api.github.com/repos/trinker/pacman/keys{/key_id}"

$items[[1]]$collaborators_url
[1] "https://api.github.com/repos/trinker/pacman/collaborators{/collaborator}"

$items[[1]]$teams_url
[1] "https://api.github.com/repos/trinker/pacman/teams"

$items[[1]]$hooks_url
[1] "https://api.github.com/repos/trinker/pacman/hooks"

$items[[1]]$issue_events_url
[1] "https://api.github.com/repos/trinker/pacman/issues/events{/number}"

$items[[1]]$events_url
[1] "https://api.github.com/repos/trinker/pacman/events"

$items[[1]]$assignees_url
[1] "https://api.github.com/repos/trinker/pacman/assignees{/user}"

$items[[1]]$branches_url
[1] "https://api.github.com/repos/trinker/pacman/branches{/branch}"

$items[[1]]$tags_url
[1] "https://api.github.com/repos/trinker/pacman/tags"

$items[[1]]$blobs_url
[1] "https://api.github.com/repos/trinker/pacman/git/blobs{/sha}"

$items[[1]]$git_tags_url
[1] "https://api.github.com/repos/trinker/pacman/git/tags{/sha}"

$items[[1]]$git_refs_url
[1] "https://api.github.com/repos/trinker/pacman/git/refs{/sha}"

$items[[1]]$trees_url
[1] "https://api.github.com/repos/trinker/pacman/git/trees{/sha}"

$items[[1]]$statuses_url
[1] "https://api.github.com/repos/trinker/pacman/statuses/{sha}"

$items[[1]]$languages_url
[1] "https://api.github.com/repos/trinker/pacman/languages"

$items[[1]]$stargazers_url
[1] "https://api.github.com/repos/trinker/pacman/stargazers"

$items[[1]]$contributors_url
[1] "https://api.github.com/repos/trinker/pacman/contributors"

$items[[1]]$subscribers_url
[1] "https://api.github.com/repos/trinker/pacman/subscribers"

$items[[1]]$subscription_url
[1] "https://api.github.com/repos/trinker/pacman/subscription"

$items[[1]]$commits_url
[1] "https://api.github.com/repos/trinker/pacman/commits{/sha}"

$items[[1]]$git_commits_url
[1] "https://api.github.com/repos/trinker/pacman/git/commits{/sha}"

$items[[1]]$comments_url
[1] "https://api.github.com/repos/trinker/pacman/comments{/number}"

$items[[1]]$issue_comment_url
[1] "https://api.github.com/repos/trinker/pacman/issues/comments/{number}"

$items[[1]]$contents_url
[1] "https://api.github.com/repos/trinker/pacman/contents/{+path}"

$items[[1]]$compare_url
[1] "https://api.github.com/repos/trinker/pacman/compare/{base}...{head}"

$items[[1]]$merges_url
[1] "https://api.github.com/repos/trinker/pacman/merges"

$items[[1]]$archive_url
[1] "https://api.github.com/repos/trinker/pacman/{archive_format}{/ref}"

$items[[1]]$downloads_url
[1] "https://api.github.com/repos/trinker/pacman/downloads"

$items[[1]]$issues_url
[1] "https://api.github.com/repos/trinker/pacman/issues{/number}"

$items[[1]]$pulls_url
[1] "https://api.github.com/repos/trinker/pacman/pulls{/number}"

$items[[1]]$milestones_url
[1] "https://api.github.com/repos/trinker/pacman/milestones{/number}"

$items[[1]]$notifications_url
[1] "https://api.github.com/repos/trinker/pacman/notifications{?since,all,participating}"

$items[[1]]$labels_url
[1] "https://api.github.com/repos/trinker/pacman/labels{/name}"

$items[[1]]$releases_url
[1] "https://api.github.com/repos/trinker/pacman/releases{/id}"

$items[[1]]$created_at
[1] "2012-05-29T18:09:56Z"

$items[[1]]$updated_at
[1] "2014-02-11T21:51:23Z"

$items[[1]]$pushed_at
[1] "2014-02-11T21:51:22Z"

$items[[1]]$git_url
[1] "git://github.com/trinker/pacman.git"

$items[[1]]$ssh_url
[1] "git@github.com:trinker/pacman.git"

$items[[1]]$clone_url
[1] "https://github.com/trinker/pacman.git"

$items[[1]]$svn_url
[1] "https://github.com/trinker/pacman"

$items[[1]]$homepage
NULL

$items[[1]]$size
[1] 1740

$items[[1]]$stargazers_count
[1] 6

$items[[1]]$watchers_count
[1] 6

$items[[1]]$language
[1] "R"

$items[[1]]$has_issues
[1] TRUE

$items[[1]]$has_downloads
[1] TRUE

$items[[1]]$has_wiki
[1] TRUE

$items[[1]]$forks_count
[1] 1

$items[[1]]$mirror_url
NULL

$items[[1]]$open_issues_count
[1] 10

$items[[1]]$forks
[1] 1

$items[[1]]$open_issues
[1] 10

$items[[1]]$watchers
[1] 6

$items[[1]]$default_branch
[1] "master"

$items[[1]]$master_branch
[1] "master"

$items[[1]]$score
[1] 11.08985
```