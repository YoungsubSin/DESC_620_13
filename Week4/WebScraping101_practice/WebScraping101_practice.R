library(rvest)
library(dplyr)
library(xml2)
library(knitr)

gasprice_practice <- "https://gasprices.aaa.com/state-gas-price-averages/"
GasPricePage <- read_html(gasprice_practice)
GasPricePage

body_nodes <- GasPricePage %>%
  html_node("body") %>%
  html_children()
body_nodes

df_1 <- GasPricePage %>%
  rvest::html_nodes('body')%>%
  xml2::xml_find_all('//*[@id="sortable"]/tbody/tr[*]/td[1]/a') %>%
  rvest::html_text()
  
df_2 <- GasPricePage %>%
  rvest::html_nodes('body')%>%
  xml2::xml_find_all('//*[@id="sortable"]/tbody/tr[*]/td[2]') %>%
  rvest::html_text()
  
df_3 <- GasPricePage %>%
  rvest::html_nodes('body')%>%
  xml2::xml_find_all('//*[@id="sortable"]/tbody/tr[*]/td[3]') %>%
  rvest::html_text()


df_4 <- GasPricePage %>%
  rvest::html_nodes('body')%>%
  xml2::xml_find_all('//*[@id="sortable"]/tbody/tr[*]/td[4]') %>%
  rvest::html_text()

df_5 <- GasPricePage %>%
  rvest::html_nodes('body')%>%
  xml2::xml_find_all('//*[@id="sortable"]/tbody/tr[*]/td[5]') %>%
  rvest::html_text()


df <- data.frame(df_1, df_2, df_3, df_4, df_5)
names(df)[1] <- "State"
names(df)[2] <- "Regular"
names(df)[3] <- "MidGrade"
names(df)[4] <- "Premium"
names(df)[5] <- "Diesel"

knitr::kable(df)
  #//*[@id="sortable"]/tbody/tr[2]/td[1]/a # copy xpath in the 'Alabama'
  #//*[@id="sortable"]/tbody/tr[1]/td[1]/a # copy xpath in the 'Alaska'
  #//*[@id="sortable"]/tbody/tr[1]/td[2] # copy xpath in the 'Regular price'