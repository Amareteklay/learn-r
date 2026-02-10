# scripts/00_setup.R
# Minimal setup helpers for your repo

required <- c("tidyverse")
installed <- rownames(installed.packages())
to_install <- setdiff(required, installed)

if (length(to_install) > 0) {
  install.packages(to_install)
}

library(tidyverse)

message("Setup complete. tidyverse loaded.")
