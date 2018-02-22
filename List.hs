import QuickSpec

sig =
  [ withMaxTermSize 7
  , con "++"  ((++)  :: [A] -> [A] -> [A])
  , con "zip" (zip   :: [A] -> [B] -> [(A, B)])
  , con "rev" (reverse :: [A] -> [A])
  ]

main = quickSpec $ withFixedSeed 355525 : sig
