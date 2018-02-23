import QuickSpec
import Data.Function

sig =
  [ withMaxTermSize 7
  , con "++"  ((++)    :: [A] -> [A] -> [A])
  , con "zip" (zip     :: [A] -> [A] -> [(A, A)])
  , con "rev" (reverse :: [A] -> [A])
  , predicate "eqLen" ((==) `on` length :: [A] -> [A] -> Bool)
  ]

main = quickSpec $ withFixedSeed 355525 : sig
