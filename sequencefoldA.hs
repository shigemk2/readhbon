import Control.Applicative

sequenceA :: (Applicative f) => [f a] -> f [a]
sequenceA = foldr (liftA2 (:)) (pure [])

main = do
    print $ sequenceA [Just 1, Just 2]
    print $ sequenceA [Just 3, Just 2, Just 1]
    print $ sequenceA [Just 3, Nothing, Just 1]
    print $ sequenceA [[1,2,3],[4,5,6]]
    print $ sequenceA [[1,2,3],[4,5,6],[3,4,4],[]]
    print $ sequenceA [(+3),(*2)] 4
    -- equal
    print $ (:) <$> Just 1 <*> sequenceA [Just 2]
    print $ (:) <$> Just 1 <*> ((:) <$> Just 2 <*> sequenceA [])
    print $ (:) <$> Just 1 <*> ((:) <$> Just 2 <*> Just [])
    print $ (:) <$> Just 1 <*> Just [2]
