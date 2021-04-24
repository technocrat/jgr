# puller.R
# preprocess tibbles
# purpose: study object--not used in production
# author: Richard Careaga
# Date: 2021-04-13

# iterate over pfl; extend length to 24, if needed for rbind
# and add an initial column id to identify each
# then iterate over pfl to bring each tibble up into the holder 
# object

source(here::here("R/libr.R"))
source(here::here("R/func.R"))

pfl <- readRDS("data/pfl_data.Rds")

# proof of concept for a single tibble
# a <- stuff(1)

# Wed Apr 21 18:42:51 2021 ------------------------------
# abandoned in favor of shell script to read in pfl files
# and load into sql table

