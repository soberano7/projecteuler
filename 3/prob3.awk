#!/usr/bin/env awk -f

# Problem Definition :

# The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 600851475143?



BEGIN {
    num = 600851475143
    i = 2

    while (i <= sqrt(num)){    # search up to square root of number for the max prime
        while (num % i == 0) num /= i                    # divide the number by
      i += 1
    }
        
    print num
}
