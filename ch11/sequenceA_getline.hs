import Control.Applicative

sequenceA :: (Applicative f) => [f a] => f [a]
sequenceA [] = pure []
sequenceA (x:xs) = (:) <$> x <*> sequenceA xs

main = do
    -- 入力したものをリストに入れる
    sequenceA [getLine, getLine, getLine]
