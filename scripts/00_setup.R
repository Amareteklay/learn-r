# scripts/00_setup.R
# Minimal setup helpers for your repo (works in Rscript/non-interactive)

options(repos = c(CRAN = "https://cloud.r-project.org"))

required <- c("tidyverse")
installed <- rownames(installed.packages())
to_install <- setdiff(required, installed)

if (length(to_install) > 0) {
  install.packages(to_install)
}

library(tidyverse)

message("Setup complete. tidyverse loaded.")
