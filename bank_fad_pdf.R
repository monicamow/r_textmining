setwd("R:/mfa/mowm/Tools/r/r_textmining")
rm(list=ls())

library(pdftools)
library(readr)
library(tidyverse)
library(tokenizers)

# first date available as PDF: March 5, 2014
download.file("https://www.bankofcanada.ca/wp-content/uploads/2018/12/fad-press-release-2018-12-05.pdf", "fad-press-release-2018-12-05.pdf", mode = "wb")

toc <- pdf_toc("fad-press-release-2018-12-05.pdf")

txt <- pdf_text("fad-press-release-2018-12-05.pdf") %>% tokenize_sentences()

txt

# # first page text
# cat(txt[1])
# 
# # second page text
# cat(txt[2])

# read_lines()

# LINKS
# https://ropensci.org/blog/2016/03/01/pdftools-and-jeroen/
# https://www.r-bloggers.com/extracting-pdf-text-with-r-and-creating-tidy-data/
# https://www.tidytextmining.com/tidytext.html
# https://www.banqueducanada.ca/wp-content/uploads/2010/11/wp10-31.pdf
# https://www.bankofcanada.ca/wp-content/uploads/2016/07/swp2016-37.pdf