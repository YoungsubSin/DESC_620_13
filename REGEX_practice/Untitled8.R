library(tidyverse)
library(stringr)

theme_set(theme_minimal())

set.seed(1)


fruit= c("apple", "blueberry", "apricot", "asian pear", "banana", "fig")


str_match(fruit, ".") #첫글자만 뽑아냄
str_match(fruit, ".+") # 전체 글자를 다 뽑아냄
str_match(fruit, "ap") #ap가 있는것만 뽑아냄

str_match(fruit, "ap.+") #ap가 있는것의 모든 문자를 뽑아냄

str_match(fruit, "[ab].+") #a, b로 시작하는 모슨 문자를 뽑아냄

str_match(fruit, "[ab].+") #a, b로 시작하는 모슨 문자를 뽑아냄
