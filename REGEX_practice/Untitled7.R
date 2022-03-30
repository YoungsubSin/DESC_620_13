library(tidyverse)
library(stringr)

theme_set(theme_minimal())

set.seed(1)


favorites = c("my favorite is 42 or 12", "I like 10 and 15", "Umm,,, 33 and 35")


str_match_all(favorites, "\\w+") #스페이스 마다 진행됨
str_match_all(favorites, "\\W+") #스페이스 마다 진행됨
str_match_all(favorites, "\\s+") #화이트스페이스
str_match_all(favorites, "\\S+") #화이트스페이
