import Data.Monoid

-- getProductなどでモノイドの中身の値を取り出す
main = do
    -- product
    print $ Product 3 `mappend` Product 9
    print $ getProduct $ Product 3 `mappend` Product 9
    print $ getProduct $ Product 3 `mappend` mempty
    print $ getProduct $ Product 3 `mappend` Product 4 `mappend` Product 2
    print $ getProduct $ Product 3 `mappend` (Product 4 `mappend` Product 2)
    print $ getProduct . mconcat . map Product $ [3,4,2]
    -- sum
    print $ Sum 2 `mappend` Sum 9
    print $ getSum $ Sum 2 `mappend` Sum 9
    print $ getSum $ Sum 2 `mappend` Sum 9 `mappend` Sum 9
    print $ getSum $ Sum 2 `mappend` (Sum 9 `mappend` Sum 9)
    print $ getSum $ mempty `mappend` Sum 3
    print $ getSum . mconcat . map Sum $ [1,2,3]
