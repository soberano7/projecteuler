#!/usr/bin/env awk -f

# Problem Definition :
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

BEGIN {
  sum = 2

  for (i = oddify(2000000); i > 2; i = i-2) {
    is_prime = 1 #prime
    for(j=3; j<=ceil(sqrt(i)); j=j+2){
      if (i%j==0){
        is_prime=0 #not prime
        break
      }
    }
    if (is_prime==1){ sum += i }
  }
  print sum
}

function ceil(n){
  return (n == int(n)) ? n : int(n)+1
}

function oddify(n){
  return (n%2 != 0) ? n : n-1
}

