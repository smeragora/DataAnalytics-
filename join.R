#creating vectors with the same column name and repeating elements in some
a<-c("a","s","d")
b<-c("a","s","f")
c<-c(9,8,7)
d<-c(1,2,3)
e<-c("m","n","o")
f<-c("q","w","e")
#calling the dplyr library so we can use the join functions 
library(dplyr)
#naming the columns and you have to have the same names to merge
D1<-data.frame(letter1=a,num=c,letter2=e)
D2<-data.frame(letter1=b,letter2=d,letter3=f)
#joins from the primary data frame, so the some elements from the second data frame are lost
ABC<-dplyr::left_join(D1,D2,by="letter1")
#similar to left_join but the some elements are lost from the primary data frame and the primary elements are being added to the secondary 
DEF<-dplyr::right_join(D1,D2, by="letter1")
#joining matching rows
GHI<-dplyr::semi_join(D1,D2, by="letter1")
#joins everything and combines columns with the same values
JKL<-dplyr::full_join(D1,D2, by="letter1")
#keeps only rows that are the same
MNO<-merge(D1, D2, by="letter1", sort = TRUE)




# made a new data frame for anti join because anti join only works with all different values 
x<-6:10
y<-4:0
z<-c(12:16)
l<-c(17:21)
q<-c("a", "b", "c", "d", "e")
DFrm <- data.frame (x,y,q)
#naming the columns the same names 
DFrm<- data.frame(first=x, second=y, letter= q)
f<-c("k", "l", "m", "n", "o")
DatF<- data.frame(l,z,f)
DatF<- data.frame(first=l, second=z, letter= f)
DFC<-cbind(DFrm, DatF)
#calling library so we can use dplyr functions 
library(dplyr)
#anti join: joins everything that are different 
pqr<-dplyr::anti_join(DFrm,DatF, by="first")
