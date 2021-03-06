import QuickSpec

f <> g = \c -> (f c, g c)

sig =
  [ withMaxTermSize 7
  , con "id"   (id    :: A -> A)
  , con "."    ((.)   :: (B -> C) -> (A -> B) -> (A -> C))
  , con "curr" (curry :: ((A, B) -> C) -> (A -> B -> C))
  , con "fst"  (fst   :: (A, B) -> A)
  , con "snd"  (snd   :: (A, B) -> B)
  , con "<>"   ((<>)  :: (C -> A) -> (C -> B) -> (C -> (A, B)))
  , con "app"  (uncurry ($) :: ((A -> B), A) -> B)
  , con "*"    ((\f g (a, b) -> (f a, g b)) :: (A -> B) -> (C -> D) -> (A, C) -> (B, D))
  ]

main = quickSpec $ withFixedSeed 355525 : sig
