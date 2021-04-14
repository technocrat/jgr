# stuffer.R
# populate data frame from /obj/holder.Rds with data from /data/pfl_data.Rds
# author: Richard Careaga
# Date: 2021-04-13

source(here::here("R/libr.R"))

con <- dbConnect(RMariaDB::MariaDB(), 
                 username="studio", 
                 password="studio", 
                 dbname ="r")


dbListTables(con)
dbListFields(con, "jgr")

# dbWriteTable(con, "jgr", a, append = TRUE)
dbDisconnect(con)
