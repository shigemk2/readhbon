-- 結合性
infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)

main = do
    print $ 3 :-: 4 :-: 5 :-: Empty
    let a = 3 :-: 4 :-: 5 :-: Empty
    print $ 100 :-: a
