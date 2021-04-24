# stuffer.R
# populate data frame from /obj/holder.Rds with data from /data/pfl_data.Rds
# author: Richard Careaga
# Date: 2021-04-13

# Wed Apr 21 18:58:19 2021 ------------------------------
# deprecated
source(here::here("R/libr.R"))
source(here("R/libr.R"))

con <- dbConnect(RMariaDB::MariaDB(), 
                 username="studio", 
                 password="studio", 
                 dbname ="r")

dbListTables(con)
dbListFields(con, "jgr")

# for (i in 1:12) print(glue::glue("send_to_sql(",i,")"))

send_to_sql(b)

send_to_sql(3)

send_to_sql(3)
send_to_sql(4)
send_to_sql(5)
send_to_sql(6)
send_to_sql(7)
send_to_sql(8)
send_to_sql(9)
send_to_sql(10)
send_to_sql(11)
send_to_sql(12)

dbDisconnect(con)
