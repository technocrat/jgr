# scratch.R
# scratch pad
# temporary testing scripts
# author: Richard Careaga
# Date: 2021-04-22

source(here::here("R/libr.R"))
source(here("R/func.R"))


source(here("R/opendb.R"))

x <- dbGetQuery(con, "SELECT id, v4 FROM jgr WHERE id = 'NS_000'")
y <- dbGetQuery(con, "SELECT id, v6 FROM jgr WHERE id = 'NS_022'")

closedb()

dat <- cbind(x[2],y[2])
fit <- lm(v6 ~ v4, data = dat)
summary(fit)

p <- ggplot(dat,aes(v6,v4))
p + 
  geom_point() +
  geom_smooth(method = "lm") + 
  theme_minimal()
