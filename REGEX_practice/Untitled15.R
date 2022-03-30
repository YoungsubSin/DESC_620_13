
library(tidyverse)
library(stringr)

theme_set(theme_minimal())

set.seed(1)


pattern = '.*(\\d{3}).*(\\d{3}).*(\\d{4})'

phone = c(
  "(541) 471 3918",
  "(603)281-0308",
  "Home: 425-707-7220",
  "(814)-462-8074",
  "9704443106",
  "I don't have a phone."
)

str_match(phone, pattern)