



#df<-plyr::join(USASAT, AcceptanceData, by="university_name", type="left", match="first")


#DF<-dplyr::left_join(USASAT, AcceptanceData, by=c("university_name","year"))
DF<-cbind(SATUSA,AcceptanceData)
library(plyr)
#result<-subset(DF,(DF$sat_math_75))
DF<-DF[,-(8:10)]
avgeng<-(as.numeric(DF$sat_cr_25)+as.numeric(DF$sat_cr_75))/2
avgmath<-(as.numeric(DF$sat_math_25)+as.numeric(DF$sat_math_75))/2
DF$avgSAT<-(avgmath)+(avgeng)
DF$acceptancerate<-100*(as.numeric(DF$admissions_total)/as.numeric(DF$applicants_total))
#comparing math and english scores
plot(DF$sat_cr_75,DF$sat_math_75)
result0<-cor(as.numeric(DF$sat_math_75), as.numeric(DF$sat_cr_75), use="complete.obs")
    method = c("pearson")
#combine SAT Score and acceptance rate
#analize High Scores and least accpetence
result01<-cor(as.numeric(DF$sat_math_75), as.numeric(DF$acceptancerate), use="complete.obs")
plot(DF$sat_math_75,DF$acceptancerate)
#finding correlation
result02<-cor(as.numeric(DF$sat_cr_75), as.numeric(DF$acceptancerate), use="complete.obs")
plot(DF$sat_cr_75,DF$acceptancerate)
# for every university 
#sat_math_75+satcr_75 gives desired SAT score for each college.
  #Column5+ column7

#temp<-DF$sat_math_75+DF$sat_cr_75




