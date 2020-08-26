.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

dta <- read.table(
  file.path(.get_course_path(), "Démarche_statistique", "Introduction_à_R", "usair.txt"), 
                  sep = ',', header = TRUE, skip = 8)