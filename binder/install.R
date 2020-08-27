local({
  r <- getOption("repos")
  r["CRAN"] <- "https://cloud.r-project.org"
  options(repos = r)
})
install.packages("JuliaCall")
library(JuliaCall)
julia <- julia_setup()
install.packages("diffeqr")
install.packages("palmerpenguins")

