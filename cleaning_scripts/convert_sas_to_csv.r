# cleaning_scripts/convert_sas_to_csv.r

# Load required library
library(haven)

# Define input and output paths
input_file <- "data/processed/extracted/frss110puf.sas7bdat"
output_file <- "data/processed/frss110puf.csv"

# Read SAS dataset
message("Reading SAS dataset from: ", input_file)
data <- read_sas(input_file)

# Save as CSV
message("Saving CSV to: ", output_file)
write.csv(data, output_file, row.names = FALSE)

# Print summary
message("Conversion complete!")
message("Number of rows: ", nrow(data))
message("Number of columns: ", ncol(data))
message("First few column names: ", paste0(names(data)[1:10], collapse = ", "))
