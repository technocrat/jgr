# puller.R
# preprocess tibbles
# author: Richard Careaga
# Date: 2021-04-13



# iterate over pfl; extend length to 24, if needed for rbind
# and add an initial column id to identify each
# then iterate over pfl to bring each tibble up into the holder 
# object


source(here::here("R/libr.R"))
pfl <- readRDS("data/pfl_data.Rds")
readRDS(here("obj/holder.Rds")) -> holder

a <- stuff(1)

