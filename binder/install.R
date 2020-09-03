local({
  r <- getOption("repos")
  r["CRAN"] <- "https://cloud.r-project.org"
  options(repos = r)
})

## non-CRAN packages
devtools::install_github("https://github.com/rstudio-education/gradethis")
devtools::install_github("StateOfTheR/optimLibR")
devtools::install_github("mlverse/torch")

## Julia and co
devtools::install_github("Non-Contradiction/JuliaCall")
library(JuliaCall)
julia <- julia_setup()
install.packages("diffeqr")
