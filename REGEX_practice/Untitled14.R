library(tidyverse)
library(stringr)

theme_set(theme_minimal())

set.seed(1)

repetitions = c("banana", "papaya", "cancan")

str_match(repetitions, "(na|pa|can){2}") #match anything na, pa, can twice