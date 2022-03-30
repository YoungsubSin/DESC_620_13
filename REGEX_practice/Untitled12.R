library(tidyverse)
library(stringr)

theme_set(theme_minimal())

set.seed(1)

captures = c("bulbasaur, flag, photo")

str_match(captures, "(\\w*)\\W*(\\w*)\\W*(\\w*)")

str_match(captures, "(\\w*)")
