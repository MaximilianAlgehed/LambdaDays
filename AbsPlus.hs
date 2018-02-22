import QuickSpec

sig =
  [ withMaxTermSize 6
  , con "+"   ((+) :: Int -> Int -> Int)
  , con "0"   (0   :: Int)
  , con "abs" (abs :: Int -> Int)
  ]

main = quickSpec $ withFixedSeed 355525 : sig
