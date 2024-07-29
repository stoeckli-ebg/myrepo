# Test R functionality
cat("R version:\n")
print(R.version)

# Test RStudio functionality
is_rstudio <- Sys.getenv("RSTUDIO") == "1"
cat("Is RStudio:", is_rstudio, "\n")

if (is_rstudio) {
  cat("RStudio version:\n")
  print(RStudio.Version())
} else {
  cat("RStudio is not detected.\n")
}

# Test RTools functionality (check if RTools is available on the PATH)
cat("Checking RTools...\n")
rtools_path <- Sys.which("gcc")
if (rtools_path != "") {
  cat("RTools detected at:", rtools_path, "\n")
} else {
  cat("RTools is not detected.\n")
}

# Download devtools
install.packages("devtools")
library(devtools)

# Install logib package
devtools::install_github("https://github.com/admin-ebg/logib")
devtools::install_github("https://github.com/admin-ebg/logib", ref = "dev")

# Test logib package
library(logib)
summary(analysis(data = datalist_example, reference_month = 1,
         reference_year = 2019, usual_weekly_hours = 40, female_spec = 2,
         male_spec = 1))
