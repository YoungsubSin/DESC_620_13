library(tidyverse)
library(stringr)

theme_set(theme_minimal())

set.seed(1)


fruit= c("apple", "blueberry", "apricot", "asian pear", "banana", "fig")


str_match(fruit, "[ab].*")

str_match(fruit, "[ap|ban].*")

str_match(fruit, "(ap|ban).*")
