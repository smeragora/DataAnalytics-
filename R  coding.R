#This will give me a sequence of 50 numbers between 0-100, and everyone will get the same result with this input 
x<-seq(0,100, length.out=50)
#Takes out x values above 50
y<-x[x>50]
x1<-seq(from=20, to=500, by 5)
randomnumbergen<-runif(15, min=1, max= 100)
hist(randomnumbergen)
#Datatype(Numeric)
# create a string of double-precision values
dbl_var <- c(1, 2.5, 4.5)  
dbl_var
