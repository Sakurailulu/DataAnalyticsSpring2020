help(read.csv)
data1 <-read.csv(file.choose(), header = T)
attach(data1)
fix(data1)
tf<- is.na(EPI)
E<- EPI[!tf]
plot(ecdf(E),do.points=FALSE,verticals = TRUE)
help("qqnorm")
par(pty = "s")
qqnorm(EPI);qqline(EPI)

