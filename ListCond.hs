import QuickSpec
import Data.Function

sig =
  [ con "++"  ((++)    :: [Int] -> [Int] -> [Int])
  , con "zip" (zip     :: [Int] -> [Int] -> [(Int, Int)])
  , con "rev" (reverse :: [A] -> [A])
  , predicate "eqLen" ((==) `on` length :: [Int] -> [Int] -> Bool)
  ]

main = quickSpec $ withFixedSeed 355525 : sig
