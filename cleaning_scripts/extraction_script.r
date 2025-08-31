# Load necessary package
if(!require("utils")) install.packages("utils")

# Define directories
zip_dir <- "data/raw/"
extract_dir <- "../data/processed/extracted/"

# List all ZIP files in raw folder
zip_files <- list.files(zip_dir, pattern = "\\.zip$", full.names = TRUE)

# Loop through and extract
for(zip_file in zip_files){
  unzip(zip_file, exdir = extract_dir)
  cat("Extracted:", zip_file, "\n")
}

# List extracted files
list.files(extract_dir)
