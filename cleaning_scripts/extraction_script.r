# Define extraction folder
extract_dir <- "data/processed/extracted/"

# Make folder if it doesn't exist
if(!dir.exists(extract_dir)){
  dir.create(extract_dir, recursive = TRUE)
}

# Extract each ZIP
zip_files <- commandArgs(trailingOnly = TRUE)

for(zip_file in zip_files){
  unzip(zip_file, exdir = extract_dir)
  cat("Extracted:", zip_file, "\n")
}
