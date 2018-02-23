import QuickSpec
import Data.List

sorted xs = and (zipWith (<=) xs (tail xs))

main = quickSpec [
  withMaxTermSize 7,
  background [
    con ":" ((:) :: A -> [A] -> [A]),
    con "[]" ([] :: [A]) ],

  con "sort" (sort :: [Int] -> [Int]),
  con "insert" (insert :: Int -> [Int] -> [Int]),
  predicate "sorted" (sorted :: [Int] -> Bool) ]
