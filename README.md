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
