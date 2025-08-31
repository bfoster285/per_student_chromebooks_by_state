library(readr)
library(dplyr)

chromebook_data <- read_csv("data/processed/frss110puf.csv", show_col_types = FALSE)

cleaned_data <- chromebook_data %>%
  mutate(
    INSTRUCTIONAL_LEVEL = case_when(
      LEVEL3 == 1 ~ "Elementary",
      LEVEL3 == 2 ~ "Middle",
      LEVEL3 == 3 ~ "High/Other",
      TRUE ~ NA_character_
    ),
    ENROLLMENT_LEVEL = case_when(
      SIZCL2 == 1 ~ "<300",
      SIZCL2 == 2 ~ "300-499",
      SIZCL2 == 3 ~ "500-999",
      SIZCL2 == 4 ~ "1000+",
      TRUE ~ NA_character_
    ),
    APPROX_ENROLLMENT = case_when(
      SIZCL2 == 1 ~ 150,
      SIZCL2 == 2 ~ 400,
      SIZCL2 == 3 ~ 750,
      SIZCL2 == 4 ~ 1200,
      TRUE ~ NA_real_
    ),
    APPROX_TOTAL_COMPUTERS = case_when(
      P_Q4TOT == 1 ~ 100,
      P_Q4TOT == 2 ~ 350,
      P_Q4TOT == 3 ~ 750,
      P_Q4TOT == 4 ~ 1200,
      TRUE ~ NA_real_
    ),
    COMPUTERS_PER_STUDENT = APPROX_TOTAL_COMPUTERS / APPROX_ENROLLMENT
  ) %>%
  select(
    IDNUMBER,
    INSTRUCTIONAL_LEVEL,
    ENROLLMENT_LEVEL,
    APPROX_ENROLLMENT,
    APPROX_TOTAL_COMPUTERS,
    COMPUTERS_PER_STUDENT
  )

write_csv(cleaned_data, "data/processed/frss110puf_cleaned.csv")

