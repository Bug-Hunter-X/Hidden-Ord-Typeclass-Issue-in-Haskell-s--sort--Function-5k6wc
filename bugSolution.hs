```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5] -- Changed to integers
  let ys = sort xs
  print ys
```
Alternatively, if you need to sort a more complex data type, you'll need to create a custom comparison function and use `sortBy` instead of `sort`.
```haskell
import Data.List (sortBy)
import Data.Ord (comparing)

data MyData = MyData { val1 :: Int, val2 :: String }

instance Ord MyData where
  compare (MyData v1 s1) (MyData v2 s2) = compare v1 v2 -- Compares based on val1

main :: IO ()
main = do
  let xs = [MyData 1 "a", MyData 3 "b", MyData 2 "c"]
  let ys = sortBy (comparing val1) xs
  print ys
```