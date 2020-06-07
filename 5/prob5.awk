#!/usr/bin/env awk -f

# Problem Definition :
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 

BEGIN {

  num = 2
  k = 1
  l = 1

  for(i=1;i<=20;i++) a_prob[i] = i #initialize  problem array
  
  while (!allones(a_prob)) {

    while (check_eligibility(num, a_prob)) {
      for(i=1;i<=length(a_prob);i++) {
        if(a_prob[i] >= num && a_prob[i] % num == 0 && a_prob[i] != 1) a_prob[i] = a_prob[i]/num
      }
      a_soln[k++] = num
    }
    num++
  }

  print amult(a_soln)
}


function allones(a) { # return true when all elements of the array are ones
  for (i=1;i<=length(a);i++) { 
    if (a[i] != 1) return 0
  }
  return 1
}

function amult(a) { # multiply all elements of an array and return results
  res=1
  for (i=1;i<=length(a);i++) res *= a[i]
  
  return res
}

function check_eligibility (n, a) { # Check if a number is elegible to be used
  for (i=1;i<=length(a);i++) {
    if (a[i] >= n && a[i] % n == 0 && a[i] != 1) return 1
  }
  return 0
}
