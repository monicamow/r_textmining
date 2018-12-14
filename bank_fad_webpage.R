setwd("R:/mfa/mowm/Tools/r/r_textmining")
rm(list=ls())

library(tidyverse)
library(rvest)

#Specifying the url for desired website to be scraped
url <- 'https://www.bankofcanada.ca/2014/01/fad-press-release-2014-01-22/'

#Reading the HTML code from the website
span <- read_html(url) %>% 
    html_nodes("span.post-content>p") %>% 
    html_text() 

# for (para in span) {
#     paras <- html_nodes(para, "p")
#     # Do stuff with paragraphs in each section...
#     
#     print(length(paras))
# }

# LINKS
# https://rpubs.com/ryanthomas/webscraping-with-rvest
# https://www.analyticsvidhya.com/blog/2017/03/beginners-guide-on-web-scraping-in-r-using-rvest-with-hands-on-knowledge/
# https://stackoverflow.com/questions/48373138/scraping-the-content-of-all-div-tags-with-a-specific-class