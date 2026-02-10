# scripts/01_basics/01_iris_first_steps.R

source("scripts/00_setup.R")

# 1) Load a built-in dataset
df <- iris

# 2) Inspect
print(head(df))
print(summary(df))

# 3) Simple transformation: mean sepal length by species
summary_tbl <- df %>%
  group_by(Species) %>%
  summarise(mean_sepal_length = mean(Sepal.Length))

print(summary_tbl)

# 4) Save output table
dir.create("outputs", showWarnings = FALSE)
write.csv(summary_tbl, "outputs/session_01_mean_sepal_length.csv", row.names = FALSE)

# 5) Plot (ggplot2)
p <- ggplot(df, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(title = "Iris: Sepal vs Petal Length")

dir.create("figures", showWarnings = FALSE)
ggsave("figures/session_01_scatter.png", p, width = 7, height = 4)

message("Session 01 complete: outputs + figure saved.")
