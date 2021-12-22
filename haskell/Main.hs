import Practice

main = do
  print("Length")
  print(myLen [1,2,3,1,2,3])
  print("Reverse")
  print(myRev [1,2,3,4,5,6,7])
  print("Member")
  print(myMem [1,2,3,4] 2)
  print(myMem [1,2,3,4] 0)
  print("Filter")
  print(myFilter [-3,-2,-1,0,1,2,3] (\x -> x <= 0))
  
