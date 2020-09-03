local({
  r <- getOption("repos")
  r["CRAN"] <- "https://cloud.r-project.org"
  options(repos = r)
})

## non CRAN packages
remotes::install_github("https://github.com/rstudio-education/gradethis")
remotes::install_github("StateOfTheR/optimLibR")
remotes::install_github("mlverse/torch")
remotes::install_github("RamiKrispin/coronavirus")
remotes::install_github("dreamRs/topogram")
remotes::install_github("ropensci/rnaturalearthhires")

## CRAN packages not found in conda
install.packages("rkeops")
install.packages("sbm")
install.packages("swirlify")
install.packages("palmerpenguins")
install.packages("ggiraph")
install.packages("timevis")
install.packages("PLNmodels")

## Julia and co
devtools::install_github("Non-Contradiction/JuliaCall")
library(JuliaCall)
julia <- julia_setup()
install.packages("diffeqr")
