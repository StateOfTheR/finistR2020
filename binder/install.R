local({
  r <- getOption("repos")
  r["CRAN"] <- "https://cloud.r-project.org"
  options(repos = r)
})

install.packages("sbm")
install.packages("palmerpenguins")

## optim 
devtools::install_github("StateOfTheR/optimLibR")
remotes::install_github("mlverse/torch")
install.packages("rkeops")

## tidy truc
install.packages("tidyverse")
install.packages("tidymodels")
install.packages("modeldata")
install.packages("skimr")
install.packages("vip")

## rlang
install.packages("rlang")
install.packages("purrr")

## Julia and co
devtools::install_github("Non-Contradiction/JuliaCall")
library(JuliaCall)
julia <- julia_setup()
install.packages("diffeqr")
