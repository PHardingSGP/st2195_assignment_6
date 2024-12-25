
library(dplyr)

##########################
## 1. LOAD AND MERGE DATA
##########################

# Set your working directory
# Note that your path to the data may be different from what is shown here

# ========
# Load fx
# ========

fx <- read.csv("./data/fx.csv")
fx <- fx[c(1,3)]  #subset the first and third columns
colnames(fx) <- c("date", "exchange_rate")
fx$date <- as.Date(fx$date)
fx$exchange_rate <- as.numeric(fx$exchange_rate)

head(fx)
tail(fx)
str(fx)
nrow(fx)
length(unique(fx$date))

# ==============
# Load speeches
# ==============

speeches <- read.csv("./data/speeches.csv", sep = '|', quote = "", encoding="UTF-8")
#speeches <- read.csv("./data/speeches.csv", sep = '|', quote = "")

speeches <- speeches[c('date', 'contents')]
speeches <- speeches[!is.na(speeches$content),]
#speeches <- speeches[!is.na(speeches$contents),c('date','contents')]

speeches$date <- as.Date(speeches$date)

head(speeches,2)
str(speeches)
nrow(speeches)
length(unique(speeches$date))  #there can be >1 speech for the same date

# To merge correctly with exchange rate data, we paste all contents for each date together
speeches <- speeches %>% 
    group_by(date) %>%
    summarise(contents=paste(contents,collapse=" ")) #collapse output to a single string
str(speeches)
nrow(speeches)


