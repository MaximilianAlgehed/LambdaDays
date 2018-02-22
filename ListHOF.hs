import QuickSpec

sig =
  [ withMaxTermSize 6
  , con "map"  (map   :: (A -> B) -> [A] -> [B])
  , con "fold" (foldr :: (A -> B -> B) -> B -> [A] -> B)
  , con "."    ((.)   :: (B -> C) -> (A -> B) -> (A -> C))
  , con "scan" (scanr :: (A -> B -> B) -> B -> [A] -> [B])
  , con "[]"   ([]    :: [A])
  , con ":"    ((:)   :: A -> [A] -> [A])
  ]

main = quickSpec $ withFixedSeed 355525 : sig
