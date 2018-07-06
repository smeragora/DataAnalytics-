x<-seq(0,100, length=50)
y<-x[x>50]

#Datatype(Numeric)
# create a string of double-precision values
dbl_var <- c(1, 2.5, 4.5)  
dbl_var


x<-1:10
y<-4:5
q<-c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")
theDF = data.frame (x,y,q)
theDF
theDF<- data.frame(first=x, second=y, number= q)
theDF
nrow(theDF)
ncol(theDF)
dim(theDF)
names(theDF)
rownames(theDF)
theArray<-array(1:12, dim=c(2,3,2))
temp=theDF$first
temp = theDF[,"first", drop=FALSE]







rm(Data.USA...Bar.Chart.of.Acceptance.Rate.for.Massachusetts.Institute.of.Technology)

#df<-plyr::join(USASAT, AcceptanceData, by="university_name", type="left", match="first")
rm(SATUSA)

dim(DF)
dim(AcceptanceData)
dim(USASAT)
#DF<-dplyr::left_join(USASAT, AcceptanceData, by=c("university_name","year"))
DF<-cbind(USASAT,AcceptanceData)
library(plyr)
#result<-subset(DF,(DF$sat_math_75))
DF<-DF[,-(8:10)]
DF$combinedSAT<-as.numeric(DF$sat_math_75)+as.numeric(DF$sat_cr_75)
DF$acceptancerate<-as.numeric(DF$admissions_total)/as.numeric(DF$applicants_total)



#combine SAT Score and acceptance rate
#analize High Scores and least accpetence


# for every university 
#sat_math_75+satcr_75 gives desired SAT score for each college.
  #Column5+ column7

#temp<-DF$sat_math_75+DF$sat_cr_75











matrix<-matrix(1:6, nrow=2)
matrix[1,1]<-10
#if you add a letter in a number matrix it will change it to script
mat[1,]
vec<-mat[,1]
vec<-vec*2
mat[,1]<-vec 
matrix1<-matrix(7:12, nrow=2)
#need same number of column and using rbind you bind rows 
supermat<-rbind(matrix, matrix1)


mat3<-matrix(1:9, nrow=3)
mat4<-matrix(10:19, nrow=3)
supermat2<-cbind(mat3, mat4)

mat5<-matrix(10:19, nrow=3)
colnames(mat5)<-c("a", "b", "c")
rownames(mat5)<=c("d", "e", "f")
