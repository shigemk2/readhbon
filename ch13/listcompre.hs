-- リスト内包表記はリストモナドの構文糖衣にすぎない
main = do
    print $ [ (n, ch) | n <- [1,2], ch <- ['a','b'] ]
