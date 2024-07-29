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
