
library(DBI)
library(ggplot2)
library(RMariaDB)

con <- dbConnect(RMariaDB::MariaDB(), 
                 username="studio", 
                 password="studio", 
                 dbname ="r")

dbListTables(con)
dbListFields(con, "jgr")

x <- dbGetQuery(con, "SELECT v4 FROM jgr WHERE id = 'NS_000'")
y <- dbGetQuery(con, "SELECT v6 FROM jgr WHERE id = 'NS_022'")

dbDisconnect(con)

dat <- cbind(x,y)
fit <- lm(v6 ~ v4, data = dat)
summary(fit)

p <- ggplot(dat,aes(v6,v4))
p + 
  geom_point() +
  geom_smooth(method = "lm") + 
  theme_minimal()
