

unique(SATvsAcceptance$year)
SAT_2014<-subset(SATvsAcceptance, SATvsAcceptance$year==2014)
SAT_2015<-subset(SATvsAcceptance, SATvsAcceptance$year==2015)
SAT_2016<-subset(SATvsAcceptance, SATvsAcceptance$year==2016)
#SATvsAcceptance<-plyr::join(USASAT, AcceptanceData, by="university_name", type="left", match="first")


#SATvsAcceptance<-dplyr::left_join(USASAT, AcceptanceData, by=c("university_name","year"))
SATvsAcceptance<-cbind(SATUSA,AcceptanceData)
library(plyr)

SATvsAcceptance<-SATvsAcceptance[,-(8:10)]

SATvsAcceptance$TotalSAT75<-as.numeric(SATvsAcceptance$sat_math_75)+as.numeric(SATvsAcceptance$sat_cr_75)
SATvsAcceptance$acceptancerate<-100*(as.numeric(SATvsAcceptance$admissions_total)/as.numeric(SATvsAcceptance$applicants_total))



#comparing math and english scores
plot(SAT_2014$TotalSAT75,SAT_2014$acceptancerate)
result_2014<-cor(as.numeric(SAT_2014$TotalSAT75), as.numeric(SAT_2014$acceptancerate), use="complete.obs")
  method = c("pearson")
  
  
plot(SAT_2015$TotalSAT75,SAT_2015$acceptancerate)
result_2015<-cor(as.numeric(SAT_2015$TotalSAT75), as.numeric(SAT_2015$acceptancerate), use="complete.obs")
method = c("pearson")


plot(SAT_2016$TotalSAT75,SAT_2016$acceptancerate)
result_2016<-cor(as.numeric(SAT_2016$TotalSAT75), as.numeric(SAT_2016$acceptancerate), use="complete.obs")
method = c("pearson")
 
#sat_math_75+satcr_75 gives desired SAT score for each college.
  #Column5+ column7

#temp<-SATvsAcceptance$sat_math_75+SATvsAcceptance$sat_cr_75

SAT2014for1350<-subset(SAT_2014, SAT_2014$TotalSAT75>1350)
above1350for14<-cor(as.numeric(SAT2014for1350$TotalSAT75), as.numeric(SAT2014for1350$acceptancerate), use="complete.obs")
method = c("pearson")


SAT2015for1350<-subset(SAT_2015, SAT_2015$TotalSAT75>1350)
above1350for15<-cor(as.numeric(SAT2015for1350$TotalSAT75), as.numeric(SAT2015for1350$acceptancerate), use="complete.obs")
method = c("pearson")


SAT2016for1350<-subset(SAT_2016, SAT_2016$TotalSAT75>1350)
above1350for16<-cor(as.numeric(SAT2016for1350$TotalSAT75), as.numeric(SAT2016for1350$acceptancerate), use="complete.obs")
  method = c("pearson")
plot(SAT2014for1350$TotalSAT75,SAT2014for1350$acceptancerate, xlab ="75th percentile SAT only above 1350", ylab="Acceptance Rates in percents", main= "2014 Data")
abline(lm(SAT2014for1350$acceptancerate~SAT2014for1350$TotalSAT75),col="green")




plot(SAT2015for1350$TotalSAT75,SAT2015for1350$acceptancerate, xlab ="75th percentile SAT only above 1350", ylab="Acceptance Rates in percents", main= "2015 Data")
lm(SAT2015for1350$TotalSAT75~SAT2015for1350$acceptancerate)
abline(lm(SAT2015for1350$acceptancerate~SAT2015for1350$TotalSAT75),col="red")


plot(SAT2016for1350$TotalSAT75,SAT2016for1350$acceptancerate, xlab ="75th percentile SAT only above 1350", ylab="Acceptance Rates in percents", main= "2016 Data")
lm(SAT2016for1350$TotalSAT75~SAT2016for1350$acceptancerate)
abline(lm(SAT2015for1350$acceptancerate~SAT2015for1350$TotalSAT75),col="purple")

#lm(SAT2015for1350$TotalSAT75~SAT2015for1350$acceptancerate)
#lm(SAT2016for1350$TotalSAT75~SAT2014for1350$acceptancerate)

u<-as.character(unique(SATvsAcceptance$university_name))
answer<-matrix(0, nrow = length(u), ncol=3)
answer<-data.frame(answer)
colnames(answer)<-c("university name", "average SAT", "Ave Acceptance Rate")

x=1
for(i in 1:length(u)){
  temp<-subset(SATvsAcceptance, SATvsAcceptance$university_name ==u[i])
  answer$`university name`[x]<-u[i]
  answer$`average SAT`[x]<-mean(temp$TotalSAT75)
  answer$`Ave Acceptance Rate`[x]<-mean(temp$acceptancerate)
  x<-x+1
  
}


