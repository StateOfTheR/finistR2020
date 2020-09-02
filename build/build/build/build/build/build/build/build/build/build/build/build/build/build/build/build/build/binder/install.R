local({
  r <- getOption("repos")
  r["CRAN"] <- "https://cloud.r-project.org"
  options(repos = r)
})

install.packages("sbm")
install.packages("palmerpenguins")

devtools::install_github("Non-Contradiction/JuliaCall")
library(JuliaCall)
julia <- julia_setup()
install.packages("diffeqr")
