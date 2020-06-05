#!/usr/bin/env awk -f

# Problem Definition :
# 
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

BEGIN {

  found = 0
  n1 = n2 = 0

  for (i=100;i<1000;i++) {
    for (j=100;j<1000;j++) {
      if (ispalin(i * j)) { 
        if (i * j > found) {found = i * j; n1=i; n2=j}
      }
    }
  }
  print n1, n2, found
}

function ispalin(n) {
  m = ""
  for (k=length(n); k!=0; k--) { 
    m = m substr(n,k,1)
  }
  return (n == m)
}
