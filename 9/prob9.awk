#!/usr/bin/env awk -f

# Problem Definition :
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.  Find the product abc.


BEGIN {
 
 for (a=1;a<998;a++) {
  for (b=1;b<998;b++) {
    for (c=1;c<998;c++) {
      if(a + b + c == 1000 && ((a*a) + (b*b) == c*c)){print a,b,c," ==> ",a*b*c; exit}
    }
  }
}
}

