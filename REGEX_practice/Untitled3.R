library(tidyverse)
library(stringr)

theme_set(theme_minimal())

set.seed(1)

numbers = c("42.", "42!", "24")

str_match(numbers, "42")