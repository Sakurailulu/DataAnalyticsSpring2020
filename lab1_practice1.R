help(read.csv)
data1 <-read.csv(file.choose(), header = T)
attach(data1)
fix(data1)
tf<- is.na(EPI)
E<- EPI[!tf]
summary(E)

fivenum(E.narm=TRUE)
stem(EPI)
hist(EPI,seq(30.,95.,1.0),prob=TRUE)
line(density(EPI.na.rm=TRUE,bw=1.))
rug(EPI)

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE) 
par(pty="s") 
qqnorm(EPI); qqline(EPI)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)
boxplot(EPI,DALY) 


EPI_South_Asia <- EPI[EPI_regions=='South Asia']
tf<- is.na(EPI)
E<- EPI[!tf]
summary(E)

fivenum(E.narm=TRUE)
stem(EPI)
hist(EPI,seq(30.,95.,1.0),prob=TRUE)
line(density(EPI.na.rm=TRUE,bw=1.))
rug(EPI)

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE) 
par(pty="s") 
qqnorm(EPI); qqline(EPI)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)
boxplot(EPI,DALY) 





