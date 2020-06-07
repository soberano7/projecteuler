#!/usr/bin/env awk -f

# Problem Definition :

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10001st prime number?

BEGIN {
 i = 1
 count = 1
 list[1]=2 

 while (count <= 10001){
    i++ ; flag = 1
    for(j=1;j<=length(list);j++){
      if (i%list[j]==0){
        flag=0 #not prime
        break
      }
    }
    if (flag==1){list[count]=i; if(count == 10001) {print count,i} count++}
  }
}

