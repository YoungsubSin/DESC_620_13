library(tidyverse)
library(stringr)

theme_set(theme_minimal())

set.seed(1)



favorites = c("my favorite is 42 or 12", "I like 10 and 15", "Umm, 33 and 35")

#str_match(favorites, "\\d+") #그냥 가장 앞 숫자만 나온다

str_match_all(favorites, "\\d+")
