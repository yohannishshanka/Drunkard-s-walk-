fun<-function(n,p){
  R=c()#LIST OF DEATH
  for (j in 1:10000) {
    L=50#INITIAL POSITION
    k=c()
    for (i in 1:n) {
      u=runif(1,0,1)
      if(u<=p){
        L=L+1
      }else{
        L=L-1  }
      k=c(k,i)
      if(L==0){
        R=append(R,L)   }
      if(L==0){
        break   }
    }
    Y=paste("trail",j,"go",length(k),"steps")
    print(Y)
  }
  paste("probability of survivald   ",1-(length(R)/10000))#PROBABILITY OF SURVIVAL
}
fun(100,0.3)


