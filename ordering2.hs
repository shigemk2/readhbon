import Data.Monoid

lengthCompare1 :: String -> String -> Ordering
lengthCompare1 x y = let a = length x `compare` length y
                         b = x `compare` y
                    in if a == EQ then b else a

lengthCompare2 :: String -> String -> Ordering
lengthCompare2 x y = (length x `compare` length y) `mappend`
                    (x `compare` y)

lengthCompare3 :: String -> String -> Ordering
lengthCompare3 x y = (length x `compare` length y) `mappend`
                    (vowels x `compare` vowels y) `mappend`
                    (x `compare` y)
    where vowels = length . filter (`elem` "aeiou")

main = do
    print $ lengthCompare1 "zen" "anna"
    print $ lengthCompare1 "zen" "ann"
    print $ lengthCompare2 "zen" "anna"
    print $ lengthCompare2 "zen" "ann"
    print $ lengthCompare3 "zen" "anna"
    print $ lengthCompare3 "zen" "ann"
