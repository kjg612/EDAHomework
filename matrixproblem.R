sid <- sample(1:10, 1000, replace=TRUE)
sid
x = matrix(rbinom(5000,10, 1/2),1000,5)


v <- list()
for (j in 1:10){
  s <- rep(0,5)
  for (i in 1:1000){
    if (sid[i]==j){
      s = s + x[i,]
      }
  }
  v[[j]] <- s
}
v

for (i in 1:10){
  v[[i]] <- v[[i]]/sum(sid==i)
}


head(v)


s <- unlist(v)
m.mat <- matrix(s,10,5,byrow=TRUE)
m.mat
head(m.mat)

#6
#5차원상의 거리 구하는 함수


distance5 <- function(x,y){
  pxy = x%*%y
  px = sqrt(x%*%x)
  py = sqrt(y%*%y)
  return(pxy/(px*py))
}
distance5(x[1,],m.mat[1,])
a <- matrix(rep(0,10000), 1000, 10)
for(i in 1:1000){
  for(j in 1:10)
    a[i,j] <- distance5(x[i,],m.mat[j,])
}
idist <- a
head(idist)


#7
ivec <- rep(0, 1000)
for(i in 1:1000){
  ivec[i] <- min(idist[i,])
}
ivec
