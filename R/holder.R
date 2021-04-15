# holder.R
# examine structure of pfl_data object and create
# an empty dataframe to be populated by it as a 
# single, consolidated dataframe
# author: Richard Careaga
# Date: 2021-04-13

source(here::here("R/libr.R"))

pfl <- readRDS("data/pfl_data.Rds")
part1 <- pfl[[1]][1][1][[1]]
part12 <- pfl[[1]][12][1][[1]]

part1
part12

write_tsv(part1, file = here("obj/part1.tsv"))
write_tsv(part12, file = here("obj/part12.tsv"))


# 12 tibbles have from 4 to 27 variables, all doubles, and each 1001 rows
# prepend a new variable, id, type integer, incrementing every
# 1001 rows;
# V1:V3 are identical in every tibble; 
# V1 is a constant 250,
# V2 decrements by one from 1000 and 
# V3 increments by one from 0; 
# they each can be spun up on the fly.


# make an empty dataframe with colnames() <- id,v1:v24

holder <- data.frame(
  grp = as.integer(),
  v1 = as.numeric(),
  v2 = as.numeric(),
  v3 = as.numeric(),
  v4 = as.numeric(),
  v5 = as.numeric(),
  v6 = as.numeric(),
  v7 = as.numeric(),
  v8 = as.numeric(),
  v9 = as.numeric(),
  v10 = as.numeric(),
  v11 = as.numeric(),
  v12 = as.numeric(),
  v13 = as.numeric(),
  v14 = as.numeric(),
  v15 = as.numeric(),
  v16 = as.numeric(),
  v17 = as.numeric(),
  v18 = as.numeric(),
  v19 = as.numeric(),
  v20 = as.numeric(),
  v21 = as.numeric(),
  v22 = as.numeric(),
  v23 = as.numeric(),
  v24 = as.numeric() 
)

# saveRDS(holder, file = here("obj/holder.Rds"))
