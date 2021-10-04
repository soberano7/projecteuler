#!/usr/bin/env awk -f

# Problem Definition :

# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!


BEGIN {
    fact = 1
    for (i=2; i<=100; i++){
        fact *= i
    }
    print sumdigits(fact)
}

function sumdigits(n){
    sum = 0
    while (n != 0){
        sum += n % 10
        n = int(n / 10)
    }
    return sum
}

