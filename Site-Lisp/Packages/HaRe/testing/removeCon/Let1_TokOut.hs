module Let1 where

data T1 a b = C2 b a

data T2 a = C3 a

res1 = let {- f :: T1 a b -> b -} 
           {- f (C1 x y) = y  -}
           -- f _ = undefined
       in error
              "f (C1 1 2) no longer defined for T1 at line: 3"