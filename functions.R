#creating a function makes the code more efficient
#f is the argument of the function
conv<-function(F){
  #this is the body of the function
  #write what the function is going to do
  fah_to_cel<-(F-32)*(5/9)
  fah_to_kelvin<-((F-32)*(5/9))+273.15
  #if you don't do the next step you will only get the kelvin conversion
  #c(fah_to_cel,fah_to_kelvin)
  #but if you want your output as a list:
  result<-c(list("output1"<-fah_to_cel, "output2"<-fah_to_kelvin))
}
#give you what is in the body of the function
body(conv)
#gives you the argument 
formals(conv)
print(conv(77))
#if you want to type the funciton in another file:
#source(functions.R)
#print(conv(78))
#when arguments is blank it sees inside the funciton block to see if f is initialized.
#F, na.rm=FALSE


#write a functions and state the arguments that need to be filled.
PV<-function(FV,r,n){
  FV/(1+r)^n
}
#shows you what is in the function
print(body(PV))
print(formals(PV))
#writing what you want you want to put in as your arguments
print(PV(150000, .06, 5))
