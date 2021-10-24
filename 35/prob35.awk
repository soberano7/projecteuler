#!/usr/bin/env awk -f

# Problem Definition :

# The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.
# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
# How many circular primes are there below one million?


BEGIN {

  num = 179
  for (num = 1; num < 1000000; num += 2){
    if(validate(num)){ # 1 - true, 0 - false
      # find all circulars of the number
      newnum = get_circular(num)
      if(isprime(newnum)){
        while(newnum != num){
          newnum = get_circular(newnum)
          if(!isprime(newnum)){continue}
        }
      }
    }
  }

}


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

function get_circular(n){
  multiplier = get_multiplier(n)
  last_digit = n % 10
  except_last_digit = int(n / 10)

  return (last_digit * multiplier + except_last_digit)
}

function get_multiplier(n){

  t = 0
  while (n > 10){
    n = int(n / 10)
    t += 1
  }

  return 10**t
}

function validate(n){
  ans = 1
  while (n > 0){
    m = n % 10
    if (m == 0 || m == 2 || m == 4 || m == 5 || m == 6 || m == 8){ # if n has any of these digits then no point checking for primeness
      ans = 0
      return ans
    }
    n = int(n / 10)
  }
  return ans
}
