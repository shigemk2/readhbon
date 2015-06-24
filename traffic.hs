data TrafficLight = Red | Yellow | Green

instance Eq (Maybe m) where
    Just x == Just y = x == y
    Nothing == Nothing = True
    _ == _ = False

main = do
    print $ Red == Red
    print $ Red == Yellow
    print $ Red `elem` [Red, Yellow, Green]

-- True
-- False
-- True
-- [Red light,Yellow light,Green light]
