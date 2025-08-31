# Load libraries
library(readr)
library(ggplot2)

# Load cleaned data
data <- read_csv("data/processed/frss110puf_cleaned.csv", show_col_types = FALSE)

# Plot: Computers per student by instructional level
p1 <- ggplot(data, aes(x = INSTRUCTIONAL_LEVEL, y = COMPUTERS_PER_STUDENT)) +
  geom_boxplot(fill = "lightblue", color = "darkblue") +
  labs(
    title = "Computers per Student by Instructional Level",
    x = "Instructional Level",
    y = "Computers per Student"
  ) +
  theme_minimal()

# Save plot
ggsave("plots/computers_by_instructional_level.png", plot = p1, width = 7, height = 5, dpi = 300)

