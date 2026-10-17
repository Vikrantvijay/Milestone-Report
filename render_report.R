# Optional command-line alternative to clicking "Knit" in RStudio.
needed <- c("rmarkdown", "knitr", "ggplot2", "stringi")
missing <- needed[!vapply(needed, requireNamespace, logical(1), quietly = TRUE)]
if (length(missing)) install.packages(missing, repos = "https://cloud.r-project.org")
rmarkdown::render("SwiftKey_Milestone_Report.Rmd", output_file = "SwiftKey_Milestone_Report.html", envir = new.env(parent = globalenv()))
