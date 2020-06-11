#!/usr/bin/env awk -f

# Problem Definition :
#  If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#  If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#  NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
#  forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20
#  letters. The use of "and" when writing out numbers is in compliance with
#  British usage.


BEGIN {
  singles[0] =""
  singles[1] ="one"
  singles[2] ="two"
  singles[3] ="three"
  singles[4] ="four"
  singles[5] ="five"
  singles[6] ="six"
  singles[7] ="seven"
  singles[8] =
  singles[9] =
  
  doubles[0] =
  doubles[1] =
  doubles[2] =
  doubles[3] =
  doubles[4] =
  doubles[5] =
  doubles[6] =
  doubles[7] =
  doubles[8] =
  doubles[9] =
  
  tens[0] =
  tens[1] =
  tens[2] =
  tens[3] =
  tens[4] =
  tens[5] =
  tens[6] =
  tens[7] =
  tens[8] =
  tens[9] =
  
  hundreds[0] = 
  hundreds[1] = 
  hundreds[2] = 
  hundreds[3] = 
  hundreds[4] = 

  print ones[1]
}

