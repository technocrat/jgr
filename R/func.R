# func.R
# functions
# author: Richard Careaga
# Date: 2021-04-21

# close connection to mysql database

closedb <- function() dbDisconnect(con)

