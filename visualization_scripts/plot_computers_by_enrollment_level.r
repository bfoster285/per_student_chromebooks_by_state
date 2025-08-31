# Load libraries
library(readr)
library(ggplot2)

# Load cleaned data
data <- read_csv("data/processed/frss110puf_cleaned.csv", show_col_types = FALSE)

# Plot: Computers per student by enrollment level
p2 <- ggplot(data, aes(x = ENROLLMENT_LEVEL, y = COMPUTERS_PER_STUDENT)) +
  geom_boxplot(fill = "lightgreen", color = "darkgreen") +
  labs(
    title = "Computers per Student by Enrollment Level",
    x = "Enrollment Level",
    y = "Computers per Student"
  ) +
  theme_minimal()

# Save plot
ggsave("plots/computers_by_enrollment_level.png", plot = p2, width = 7, height = 5, dpi = 300)

