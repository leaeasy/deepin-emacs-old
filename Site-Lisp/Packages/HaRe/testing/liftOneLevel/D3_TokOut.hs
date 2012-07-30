module D3 where

{-lift 'sq' to top level. This refactoring only affects the 
  current module. -}
 
sumSquares (x:xs) = sq x + sumSquares xs
  
sumSquares [] = 0

sq x = x ^ pow


pow = 2

