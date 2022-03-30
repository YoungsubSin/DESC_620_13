library(tidyverse)
library(stringr)

theme_set(theme_minimal())

set.seed(1)



favorites = c("my favorite is 423", "I like 10", "Umm, 33")


str_match(favorites, "\\d")



str_match(favorites, "\\d+")
