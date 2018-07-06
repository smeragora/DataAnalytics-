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
