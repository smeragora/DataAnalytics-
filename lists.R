l<-list(1:4, c(TRUE, FALSE), "a")
#naming 
names(l)<-c("num", "logic", "string")
#str to find structure
#adding comments
comment(l)<-("This is my list l")
#after giving the name I can see the attributes, if I dont it says NULL
attributes(l)
str(l)
#gives item back as a vector
l$num
#gives output as a vector 
l[1]
#gives you a simplified 
l[[1]]
l[[1]][1]
#combining lists

l1<-list(l, c(5:10))
str(l1)

l2<-list(1:4, list(c(TRUE, FALSE), "a"))
#another way of naming the list
l2<-list("num1"=1:4, "logic"=list(c(TRUE, FALSE)), "string"="a")
#no nesting when you use append
l3<-append(l, list(c(5:10)))
str(l3)





