install.packages("tidyverse")
install.packages("gcookbook")

library(tidyverse)
library(gcookbook)

library(ggplot2)
library(dplyr)
library(gcookbook)


install.packages("ggplot2")

install.packages(c("ggplot2", "gcookbook", "MASS", "dplyr"))

library(ggplot2)


data <- read.csv("datafile.csv")

data <- read.csv("datafile.csv", header = FALSE)

# Manually assign the header names
names(data) <- c("Column1", "Column2", "Column3")

data <- read.csv("datafile.csv", sep = "\t")

data <- read.csv("datafile.csv", stringsAsFactors = FALSE)

# Convert to factor
data$Sex <- factor(data$Sex)
str(data)
#> 'data.frame': 3 obs. of 4 variables:
#> $ First : chr "Currer" "Dr." ""
#> $ Last : chr "Bell" "Seuss" "Student"
#> $ Sex : Factor w/ 2 levels "F","M": 1 2 NA
#> $ Number: int 2 49 21


install.packages("readxl")

library(readxl)
data <- read_excel("datafile.xlsx", 1)

data <- read_excel("datafile.xls", sheet = 2)

data <- read_excel("datafile.xls", sheet = "Revenues")

data <- read_excel("datafile.xls", col_types = c("blank", "text", "date", "numeric"))

# Only need to install the first time
install.packages("haven")

library(haven)
data <- read_sav("datafile.sav")



library(dplyr) # The pipe is provided by dplyr

morley # Look at the morley data set
#>     Expt Run Speed
#> 001    1   1   850
#> 002    1   2   740
#> 003    1   3   900
#>  ...<94 more rows>...
#> 098    5  18   800
#> 099    5  19   810
#> 100    5  20   870

morley %>%
  filter(Expt == 1) %>%
  summary()
#>       Expt        Run            Speed     
#>  Min.   :1   Min.   : 1.00   Min.   : 650  
#>  1st Qu.:1   1st Qu.: 5.75   1st Qu.: 850  
#>  Median :1   Median :10.50   Median : 940  
#>  Mean   :1   Mean   :10.50   Mean   : 909  
#>  3rd Qu.:1   3rd Qu.:15.25   3rd Qu.: 980  
#>  Max.   :1   Max.   :20.00   Max.   :1070


