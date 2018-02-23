import QuickSpec
import Data.Function

sig =
  [ con "+"   ((+) :: Int -> Int -> Int)
  , con "0"   (0   :: Int)
  , con "abs" (abs :: Int -> Int)
  , predicate "eqSign" ((==) `on` signum :: Int -> Int -> Bool)
  ]

main = quickSpec $ withFixedSeed 355525 : sig
