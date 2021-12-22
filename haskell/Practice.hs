module Practice where

myLen :: [a] -> Int
myLen [] = 0
myLen (x:xs) = 1 + myLen(xs)

myRev :: [a] -> [a]
myRev [] = []
myRev (x:xs) = myRev xs ++ [x]

myMem :: (Eq a) => [a] -> a -> Bool
myMem [] mem = False
myMem (x:xs) mem = 
  if x == mem then True
  else myMem xs mem

myFilter :: [a] -> (a->Bool) -> [a]
myFilter [] fun = []
myFilter (x:xs) fun = 
  if fun x then [x] ++ myFilter xs fun
  else myFilter xs fun