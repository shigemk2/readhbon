import Control.Applicative

sequenceA :: (Applicative f) => [f a] => f [a]
sequenceA = foldr (liftA2 (:)) (pure [])

main = do
    -- sequence
    print $ sequence [Just 1, Just 2, Just 3]
    -- 再帰のやつをfold verで試してみる
    print $ sequenceA [Just 1, Just 2]
    print $ (:) <$> Just 1 <*> sequenceA [Just 2, Just 3]
    print $ (:) <$> Just 1 <*> sequenceA [Just 2]
    print $ (:) <$> Just 1 <*> ((:) <$> Just 2 <*> sequenceA [])
    print $ (:) <$> Just 1 <*> ((:) <$> Just 2 <*> Just [])
    print $ (:) <$> Just 1 <*> Just [2]

    -- foldしてるので、アキュムレータだけが残る
    print $ sequenceA [Just 3, Just 2, Just 1]
    print $ sequenceA [Just 3, Nothing, Just 1]
    print $ sequenceA [(+3), (+2), (+1)] 3
    print $ sequenceA [[1,2,3], [4,5,6]]
    print $ sequenceA [[1,2,3], [], [4,5,6]]
    print $ sequenceA [[1,2,3], [4,5,6], [3,4,4], []]

    -- 例
    print $ sequenceA [(>4),(<10),odd] 7
    print $ and $ sequenceA [(>4),(<10),odd] 7
    print $ or $ sequenceA [(>4),(<10),odd] 7
    print $ or $ sequenceA [(>4),(<10),even] 2

    print $ sequenceA [[1,2,3],[4,5,6]]

    -- 内包表記
    print $ [[x,y] | x <- [1,2,3], y <- [4,5,6]]
    print $ [[x,y] | x <- [1,2], y <- [3,4]]
    print $ [[x,y,z] | x <- [1,2], y <- [3,4], z <- [5,6]]
    -- sequence
    print $ sequenceA [[1,2],[3,4]]
    print $ sequenceA [[1,2],[3,4],[5,6]]
