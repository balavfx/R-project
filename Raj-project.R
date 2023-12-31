library(rvest)
library(dplyr)
library(stringr)
library(robotstxt)
url <- 'https://nanoreview.net/en/soc-list/rating'
web <- read_html(url)
View(web)
Processer_Name <- web %>% html_nodes('.table-list a') %>% html_text()
View(Processer_Name)
Rating <- web %>% html_nodes('.table-list-score-box') %>% html_text()
View(Rating)
Cores <- web %>% html_nodes('td:nth-child(6)') %>% html_text()
View(Cores)
data_77= data.frame(Processer_Name,Rating,Cores)
View(data_77)
write.csv(data_77,"processer-list.csv")
