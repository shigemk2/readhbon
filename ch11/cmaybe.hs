data CMaybe a = CNothing | CJust Int a deriving (Show)
-- CMaybeをFunctorのインスタンスにしてみる
instance Functor CMaybe where
    fmap f CNothing = CNothing
    fmap f (CJust counter x) = CJust (counter+1) (f x)

main = do
    -- print $ CNothing
    print $ CJust 0 "haha"
    print $ CJust 100 [1,2,3]
    print $ fmap (++"ha") (CJust 0 "ho")
    print $ fmap (++"he") (fmap (++"ha") (CJust 0 "ho"))
    print $ fmap (++"blah") CNothing
    -- CMaybeがファンクター則を満たしていない反例
    -- id = fmap idではないので、ファンクターではない。
    print $ fmap id (CJust 0 "haha") -- CJust 1 "haha"
    print $ id (CJust 0 "haha") -- CJust 0 "haha"
