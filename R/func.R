# func.R
# functions
# author: Richard Careaga
# Date: 2021-04-14

pluck <- function(x) {
  tib = cbind(
    rep(x,nrow(pfl[[1]][1][[x]][,-c(1:3)])),
    pfl[[1]][1][[x]][,-c(1:3)])
  colnames(tib) <- c("grp","v1")
  return(add_row(holder,tib))
}

stuff <- function(x) add_row(holder,pluck(x))
holder
