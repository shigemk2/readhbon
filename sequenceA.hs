import Control.Applicative

sequenceA :: (Applicative f) => [f a] -> f [a]
sequenceA [] = pure []
sequenceA (x:xs) = (:) <$> x <*> sequenceA xs

main = do
    print $ sequenceA [Just 1, Just 2]
    -- equal
    print $ (:) <$> Just 1 <*> sequenceA [Just 2]
