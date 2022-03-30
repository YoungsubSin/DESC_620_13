library(tidyverse)
library(stringr)

theme_set(theme_minimal())

set.seed(1)


grape_things = c("grape", "grapefruit", "grapevine", "grapeseed oil")

str_match(grape_things, "grape.+")

str_match(grape_things, "grape.*")
