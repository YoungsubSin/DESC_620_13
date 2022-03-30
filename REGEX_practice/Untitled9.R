library(tidyverse)
library(stringr)

theme_set(theme_minimal())

set.seed(1)


fruit= c("apple", "blueberry", "apricot", "asian pear", "banana", "fig")


empty = ""

str_match(empty, ".+")

str_match(empty, ".*")
