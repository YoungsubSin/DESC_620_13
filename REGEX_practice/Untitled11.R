library(tidyverse)
library(stringr)

theme_set(theme_minimal())

set.seed(1)

cat_things = c("caterpillar", "catapult", "cattle", "cat", "house cat")

str_match(cat_things, "cat.*")

str_match(cat_things, "^cat.*")

str_match(cat_things, ".*cat")

str_match(cat_things, ".*cat$") 
