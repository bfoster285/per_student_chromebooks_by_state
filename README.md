# Chromebook Adoption in U.S. Public Schools (2019–20)
## Project Overview

This project explores Chromebook adoption in U.S. public schools during the 2019–20 school year, using publicly available data from the NCES FRSS 110 dataset. The primary goal is to calculate a single, interpretable metric: the number of Chromebooks per student in each state, providing a clear picture of technology availability in schools.

This project serves as a data analysis portfolio piece, demonstrating:

- Data extraction and cleaning in R

- Calculation of derived metrics

- Aggregation and state-level analysis

- Visualization of educational technology trends

- Reproducible workflow and documentation

## Research Question

“What is the average number of Chromebooks per student in each U.S. state during the 2019–20 school year?'	​

## Data Source

NCES FRSS 110 – Public School Use of Educational Technology (2019–20)

## Data Extraction Script

### Script
`Rscript cleaning_scripts/extraction_script.R`

### Purpose
- Extracts the contents of NCES FRSS 110 ZIP files into a folder for further processing.
- Prepares the raw data files, documentation, and SAS scripts for analysis.

### Prerequisites
- Ensure that the ZIP files are placed in the `data/raw/` directory before running the script:
  - `2022011_FRSS_PUF_DAT.zip`
  - `2022011_FRSS_PUF_DOC.zip`
  - `2022011_FRSS_PUF_FULL.zip`

### Usage
Run the script from the terminal as follows:

```bash
Rscript cleaning_scripts/extraction_script.R \
data/raw/2022011_FRSS_PUF_DAT.zip \
data/raw/2022011_FRSS_PUF_DOC.zip \
data/raw/2022011_FRSS_PUF_FULL.zip

### Converting SAS Data to CSV

After extraction, convert the main SAS dataset into a CSV for easier use in R:

```bash
Rscript cleaning_scripts/convert_sas_to_csv.R

## Project Updates – FRSS Chromebook Data

The following updates have been made to the FRSS Chromebook dataset and visualization workflow:

1. **Column Renaming and Cleaning**
   - `LEVEL3` → `INSTRUCTIONAL_LEVEL` (1 = Elementary, 2 = Middle, 3 = High/Other)
   - `SIZCL2` → `ENROLLMENT_LEVEL` (1 = <300, 2 = 300–499, 3 = 500–999, 4 = 1,000+)
   - `P_Q4TOT` → `COMPUTERS_PER_STUDENT` (calculated as total computers divided by total enrollment)
   - Removed extraneous or imputed columns for clarity
   - Converted categorical codes to descriptive string labels for easier interpretation

2. **Visualization Updates**
   - Two separate visualizations were created:
     1. **Computers per student by instructional level**
     2. **Computers per student by enrollment level**
   - Independent variables (`INSTRUCTIONAL_LEVEL` and `ENROLLMENT_LEVEL`) are plotted on the x-axis; dependent variable (`COMPUTERS_PER_STUDENT`) is plotted on the y-axis.

3. **Assumptions & Notes**
   - The dataset does not distinguish between Chromebooks and other types of computers; all student-use computers are included.
   - Approximate numbers are used for computers and enrollment due to public-use file confidentiality restrictions.

These updates improve readability, clarity, and usability of the dataset and visualizations for analysis of educational technology access.
