library(tidyverse)
library(stringr)

theme_set(theme_minimal())

set.seed(1)



letters = c("abc", "abcd", "abcdef", "xyz")

str_match(letters, "abc")

