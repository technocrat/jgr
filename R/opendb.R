# opendb.R
# sourcing this with source(here("R/opendb.R")) creates
# the con object open `r` mysql data base with the
# credentials shown, and list tables and fields of jgr table
# leaves session open until closed with dbDisconnect(con) 
# closedb() in func.R
# author: Richard Careaga
# Date: 2021-04-21

source(here::here("R/libr.R"))

con <- dbConnect(RMariaDB::MariaDB(), 
                 username="studio", 
                 password="studio", 
                 dbname ="r")

dbListTables(con)
dbListFields(con, "jgr")