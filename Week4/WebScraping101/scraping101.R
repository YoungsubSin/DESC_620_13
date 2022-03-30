
library(rvest)
library(dplyr)

  
gasprice <- "https://gasprices.aaa.com/state-gas-price-averages/"
GPpage <- read_html(gasprice) #as areslut, 2 nodes were made.
GPpage

# body_nodes <- html_children(html_node(GPpage, "body"))

body_nodes <- GPpage %>% 
  html_node("body") %>% 
  html_children()
body_nodes

df1 <- GPpage %>% 
  rvest::html_nodes('body') %>% 
  xml2::xml_find_all('//*[@id="sortable"]/tbody/tr[*]/td[1]/a') %>% # use astria key. instead of tr[2] in line 24.
  rvest::html_text()

df2 <- GPpage %>% 
  rvest::html_nodes('body') %>% 
  xml2::xml_find_all('//*[@id="sortable"]/tbody/tr[*]/td[2]') %>% # regular columns is td[2] and we will select all rows.
  rvest::html_text()

df3 <- GPpage %>% 
  rvest::html_nodes('body') %>% 
  xml2::xml_find_all('//*[@id="sortable"]/tbody/tr[*]/td[3]') %>% # mid_grad columns is td[3] and we will select all rows.
  rvest::html_text()

df4 <- GPpage %>% 
  rvest::html_nodes('body') %>% 
  xml2::xml_find_all('//*[@id="sortable"]/tbody/tr[*]/td[4]') %>% # premium columns is td[2] and we will select all rows.
  rvest::html_text()

df5 <- GPpage %>% 
  rvest::html_nodes('body') %>% 
  xml2::xml_find_all('//*[@id="sortable"]/tbody/tr[*]/td[5]') %>% # diesel columns is td[2] and we will select all rows.
  rvest::html_text()

df <- data.frame(df1, df2, df3, df4, df5)

names(df)[1] <- "State"
names(df)[2] <- "Regular"
names(df)[3] <- "MidGrade"
names(df)[4] <- "Premium"
names(df)[5] <- "Diesel"

knitr::kable(df)


#//*[@id="sortable"]/tbody/tr[2]/td[1]/a # copy xpath in the 'Alabama'
#//*[@id="sortable"]/tbody/tr[1]/td[1]/a # copy xpath in the 'Alaska'
#//*[@id="sortable"]/tbody/tr[1]/td[2] # copy xpath in the 'Regular price'

#sortable > tbody > tr:nth-child(1) > td:nth-child(1) > a
#sortable > tbody > tr:nth-child(1) > td.regular
#sortable > tbody > tr:nth-child(1) > td.mid_grade
#sortable > tbody > tr:nth-child(1) > td.premium
#sortable > tbody > tr:nth-child(1) > td.diesel


#//*[@id="title-of-a-story"]

