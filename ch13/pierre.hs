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
-- バナナ
banana :: Pole -> Maybe Pole
banana _ = Nothing
-- 豆腐
tofu :: Pole -> Maybe Pole
tofu _ = Just (0,0)

-- モナドを使わない選択
routine :: Maybe Pole
routine = case landLeft 1 (0, 0) of
              Nothing -> Nothing
              Just pole1 -> case landRight 4 pole1 of
                                Nothing -> Nothing
                                Just pole2 -> case landLeft 2 pole2 of
                                                  Nothing -> Nothing
                                                  Just pole3 -> landLeft 1 pole3

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
    print $ return (0, 0) >>= landLeft 1 >>= banana >>= landRight 1
    print $ return (0, 0) >>= landLeft 1 >>= tofu >>= landRight 1
    print $ return (0, 0) >>= landLeft 1 >>= landRight 1 >>= tofu

