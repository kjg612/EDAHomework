set.seed(1)
a = list()
for (i in 1:1000){
  x = rpois(1,4) + 1
  x = min(x,10)
  a[[i]] = sample(1:10, x)
}
head(a)


v <- rep(0,length(a))
for (i in 1: length(a)){
  v[i] = length(a[[i]])
}

s <- rep(0,9)
for (i in 1:9){
  s[i] = sum(v == i+1)
}
s





#count 2~3 case


a2.3 <- list()
for (i in 1:1000){                                #2~3명 있는거만 남기자!
  if ((length(a[[i]]))>=2&(length(a[[i]])<=3)){
    a2.3[[i]]<-a[[i]]
  }
  else
  {
    a2.3[[i]]<-NULL
  }
}

a2.3[sapply(a2.3, is.null)]<-NULL  # 결측치 제거 

pv2.3 = rep(0,10)   # 점수 벡터 생성
for (j in 1:10){
for (i in 1:length(a2.3)){
  if (a2.3[[i]][1] == j){
    pv2.3[j] = pv2.3[j] + 1
  }
}
}


pv2.3
sum(pv2.3)





#count 4~6 case

a4.6 = list()
for (i in 1:1000){                                #4~6명 있는거만 남기자!
  if ((4<=length(a[[i]]))&(length(a[[i]])<=6)){
    a4.6[[i]] <- a[[i]]
  }
  else
  {
    a4.6[[i]] <- NULL
  }
}

a4.6[sapply(a4.6, is.null)]<-NULL

head(a4.6)

#망할 점수계산
pv4.6 <- rep(0,10)
for (k in 1:2){
  if (k==1){
    p = 2
  }
  else{
    p = 1
  }
  for (j in 1:10){                
    for (i in 1:length(a4.6)){
      if (a4.6[[i]][k] == j){
        pv4.6[j] = pv4.6[j] + p
    }
  }
}
}
pv4.6

sum(pv4.6)
length(a4.6)



# 7~10 명 케이스

a7.10 = list()
for (i in 1:1000){                                #7~10명 있는거만 남기자!
  if ((6<length(a[[i]]))&(length(a[[i]])<11)){
    a7.10[[i]] <- a[[i]]
  }
  else{
    a7.10[[i]] <- NULL
  }
}

a7.10[sapply(a7.10, is.null)]<-NULL


pv7.10 <- rep(0,10)

for (k in 1:3){
  if (k==1){
    p = 3
  }else if (k==2){
    p = 2
  }else if (k==3){
    p = 1
  }
  for (j in 1:10){                    
    for (i in 1:length(a7.10)){
      if (a7.10[[i]][k] == j){
        pv7.10[j] = pv7.10[j] + p
    }
  }
}
}

sum(pv7.10)


# 대망의 점수계산이당

pv <- pv2.3 + pv4.6 + pv7.10
pv
max(pv)
