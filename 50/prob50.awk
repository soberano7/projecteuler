#!/usr/bin/env awk -f

# Problem Definition :

# The prime 41, can be written as the sum of six consecutive primes: 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.
# The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.
# Which prime, below one-million, can be written as the sum of the most consecutive primes?



BEGIN {
  i=0
  primelist[i]=2
  i += 1
  for (num = 3; num < 1000000; num += 2){
      if(isprime(num)){
        primelist[i]=num
        print(primelist[i])
        i += 1
      }
  }
} #BEGIN


function isprime(n){
  ans = 1
  for (i = 2; i < n/2; i += 1){
    if(n % i == 0){
      ans = 0
      return ans
    }
  }
  return ans
}


