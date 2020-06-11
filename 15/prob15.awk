#!/usr/bin/env awk -f

# Problem Definition :
# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20×20 grid?

BEGIN {
  for (i=0;i<=21;i++){
    for (j=0;j<=21;j++){
      if(i == 0 || j == 0){ 
       grid[i][j]=1
      }else{
        grid[i][j] = grid[i-1][j] + grid[i][j-1]
      }
    }
  }
  print grid[20][20]
}
