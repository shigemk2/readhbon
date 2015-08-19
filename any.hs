import Data.Monoid

-- newtypeにくるむ
-- この方法は面倒なので、orとかandとか使ったほうがいい
main = do
    print $ getAny $ Any True `mappend` Any False
    print $ getAny $ mempty `mappend` Any True
    print $ getAny . mconcat . map Any $ [False, False, False, True]
    print $ getAny $ mempty `mappend` mempty
