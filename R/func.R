# func.R
# functions
# author: Richard Careaga
# Date: 2021-04-14

get_holder <- function() readRDS(here("obj/holder.Rds")) 

pluck <- function(x) {
  tib = cbind(unlist(rep(x,nrow(pfl[[1]][x][[1]]))),
        pfl[[1]][x][[1]][,-c(1:3)])
  colnames(tib) <- set_colnames(tib)
  return(add_row(holder,tib))
}

set_colnames <- function(x) {
  ionic = list()
  for (i in seq_along(x)) ionic[i] = glue("v",i)
  c("grp", unlist(ionic))
}

stuff <- function(x) {
  get_holder -> holder
  add_row(holder,pluck(x))
}

send_to_sql <- function(x) dbWriteTable(con, "jgr", stuff(x), append = TRUE)

