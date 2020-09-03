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

devtools::install_github("Non-Contradiction/JuliaCall")
library(JuliaCall)
julia <- julia_setup()
install.packages("diffeqr")
