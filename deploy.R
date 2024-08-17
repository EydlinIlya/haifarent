library(rsconnect)    # Free deployment option

setAccountInfo(name=Sys.getenv("POSIT_NAME"), token=Sys.getenv("POSIT_TOKEN"),
               secret=Sys.getenv("POSIT_SECRET"))
deployApp(appFiles = c("faceshtime.Rmd", "geo.csv"))