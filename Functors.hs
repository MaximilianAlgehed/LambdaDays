import QuickSpec

safeHead [] = Nothing
safeHead (x:_) = Just x

sig =
  [ con "id"       (id       :: A -> A)
  , con "."        ((.)      :: (B -> C) -> (A -> B) -> (A -> C))
  , con "mapList"  (fmap     :: (A -> B) -> [A] -> [B])
  , con "mapMaybe" (fmap     :: (A -> B) -> Maybe A -> Maybe B)
  , con "safeHead" (safeHead :: [A] -> Maybe A)
  ]

main = quickSpec $ withFixedSeed 355525 : sig
