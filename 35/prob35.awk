#!/usr/bin/env awk -f

# Problem Definition :

# The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.
# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
# How many circular primes are there below one million?


BEGIN {

  # find all circulars of the number
  num = 12345
  div = 10
  ans = int(num / div)

  while (ans > 10){
    ans = int(num / div)
    num -= ans * div
    div = div * 10
  }
  print num
}
