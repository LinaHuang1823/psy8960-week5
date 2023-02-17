#Script Settings and Resources
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
library(tidyverse)
library(lubridate)

#Data Import
Adata_tbl <- read_delim("../data/week5/Aparticipants.dat",delim = "-", col_names = c("casenum","parnum","stimver","datadate","qs"))
Anotes_tbl <- read_csv("../data/week5/Anotes.csv")
Bdata_tbl <- read_delim("../data/week5/Bparticipants.dat", delim = "\t",col_names = c("casenum","parnum","stimver","datadate",paste0("q", 1:10)))
Bnotes_tbl <- read_delim("../data/week5/Bnotes.txt", delim = "\t")

#Data Cleaning