#!/usr/bin/env awk -f

# Problem Definition :
# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?


BEGIN {
  sum = 0
  num = 2^1000

## this method does not work for large numbers!
# while (num != 0){
#   digit = num % 10
#   num = int (num/10)
#   print num
#   sum += digit
# }
  for (i=1;i<=length(num);i++) {
    sum+=substr(num, i, 1)
  }

  print sum
}

