library(reshape2) 



c<-1 

r<-.1 

P0<-2 

nyears<-30 



Df<-data.frame(vector(length=nyears+1))





N<-numeric(nyears+1)



N[1]<-P0 



for(i in 2:(nyears+1)){
  
  dP<-N[i-1]*r*((N[i-1]-c)/N[i-1])
  
  N[i]<-N[i-1]+dP 
  
} 



Df<-cbind(Df,N) 









Df$vector.length...nyears...1.<-c(1:31)

names(Df)[names(Df)=="vector.length...nyears...1."]<-"years"



Df<-melt(Df,id.vars="years")



plot(Df$years,Df$value)



lns=log((P0*exp(r*Df[10,1]))-Df[10,3])-log(exp(r*Df[10,1])-1)



s= exp(lns)

s

