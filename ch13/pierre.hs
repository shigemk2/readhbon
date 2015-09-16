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

