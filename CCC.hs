import QuickSpec

sig =
  [ withMaxTermSize 10
  , con "id"      (id      :: A -> A)
  , con "."       ((.)     :: (B -> C) -> (A -> B) -> (A -> C))
  , con "curr"    (curry   :: ((A, B) -> C) -> (A -> B -> C))
  , con "app"     (uncurry ($) :: ((A -> B), A) -> B) 
  , con "fst"     (fst     :: (A, B) -> A)
  , con "snd"     (snd     :: (A, B) -> B)
  , con "|"       ((\f g c -> (f c, g c)) :: (C -> A) -> (C -> B) -> (C -> (A, B)))
  , con "*"       ((\f g (a, b) -> (f a, g b)) :: (A -> C) -> (B -> D) -> ((A, B) -> (C, D)))
  ]

main = quickSpec $ withFixedSeed 355525 : sig
