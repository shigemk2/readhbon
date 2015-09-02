type Birds = Int
type Pole = (Birds, Birds)

-- 鳥
landLeft :: Birds -> Pole -> Pole
landLeft n (left, right) = (left + n, right)
landRight :: Birds -> Pole -> Pole
landRight n (left, right) = (left, right + n)

-- バランス棒
x -: f = f x

main = do
    print $ landLeft 2 (0, 0)
    print $ landLeft 1 (1, 2)
    print $ landRight (-1) (1, 2)
    print $ (0, 0) -: landLeft 1 -: landRight 1 -: landLeft 2
