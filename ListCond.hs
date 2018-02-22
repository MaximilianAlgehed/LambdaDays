import QuickSpec

sig =
  [ withMaxTermSize 6
  , con "++"  ((++)    :: [Int] -> [Int] -> [Int])
  , con "zip" (zip     :: [Int] -> [Int] -> [(Int, Int)])
  , con "rev" (reverse :: [Int] -> [Int])
  , predicate "eqLen" (eqLen :: [Int] -> [Int] -> Bool)
  ]

eqLen :: [a] -> [b] -> Bool
eqLen as bs = length as == length bs

main = quickSpec $ withFixedSeed 355525 : sig
