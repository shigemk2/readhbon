type Birds = Int
type Pole = (Birds, Birds)

-- 鳥
landLeft :: Birds -> Pole -> Maybe Pole
landLeft n (left, right)
    | abs ((left + n) - right) < 4 = Just (left + n, right)
    | otherwise = Nothing
landRight :: Birds -> Pole -> Maybe Pole
landRight n (left, right)
    | abs (left - (right + n)) < 4 = Just (left, right + n)
    | otherwise = Nothing
-- バランス棒
x -: f = f x

main = do
    print $ landLeft 2 (0, 0)
    print $ landLeft 1 (1, 2)
    print $ landRight (-1) (1, 2)
    print $ landRight 10 (0, 3)
    print $ landRight 1 (0, 0) >>= landLeft 2
    -- NothingがまじるとずっとNothing
    print $ Nothing >>= landLeft 2
    -- print $ (0, 0) -: landLeft 1 -: landRight 4 -: landLeft (-1) -: landRight (-2)
    -- の代わりの書き方
    -- returnは必須
    print $ return (0, 0) >>= landRight 2 >>= landLeft 2 >>= landRight 2
    -- ラムダを使った書き方
    print $ return (0, 0) >>= (\x -> landRight 2 x) >>= (\x -> landLeft 2 x) >>= (\x -> landRight 2 x)
    print $ (landRight 3 (1,2) >>= (\x -> landLeft 3 x))
    print $ landRight 3 (1, 2)

