#1)

set.seed(1)
m1 = 10
m2 = 5
num = 0


for (i in 1:4){
  v <- rbinom(1,1,1/2)
  if (v==0){
    m1 = m1 - 1
    m2 = m2 + 1
  }
  else if (v==1){
    m1 = m1 + 1
    m2 = m2 - 1
  }
}

m1

#2)

set.seed(1)
m1 = 10
m2 = 5
num = 0


 
while(m1>0&m2>0){
  v <- rbinom(1,1,1/2)
  if (v==0){
      m1 = m1 - 1
      m2 = m2 + 1
  }
    else if (v==1){
      m1 = m1 + 1
      m2 = m2 - 1
    }
num = num +1
}
num

# 3
nv <- rep(0,2)
for(k in 1:200){
  set.seed(k)
  m1 = 10
  m2 = 5
  num = 0
  while(m1>0&m2>0){
    v <- rbinom(1,1,1/2)
    if (v==0){
      m1 = m1 - 1
      m2 = m2 + 1
    }
    else if (v==1){
      m1 = m1 + 1
      m2 = m2 - 1
    }
  if (m1==0){
    nv[2] <- nv[2] + 1
  }
  else if (m2==0){
    nv[1] <- nv[1] + 1
  }
  }
}

nv


#10.
nv <- rep(0,2)
for(k in 1:200){
  set.seed(k)
  m1 = 10
  m2 = 25
  num = 0
  while(m1>0&m2>0){
    v <- rbinom(1,1,1/2)
    if (v==0){
      m1 = m1 - 1
      m2 = m2 + 1
    }
    else if (v==1){
      m1 = m1 + 1
      m2 = m2 - 1
    }
    if (m1==0){
      nv[2] <- nv[2] + 1
    }
    else if (m2==0){
      nv[1] <- nv[1] + 1
    }
  }
}
r = nv[1]/200
r




# 10원 0.495
# 15원 0.39
# 20원 0.335
# 25원 0.3