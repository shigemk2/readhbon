import Control.Applicative

main = do
    print $ [(+3), (*2)] <*> [1,2]
    -- ZipList a 型は Show インスタンスをサポートしていません。getZipList 関数を使って生リストを取り出す必要があります
    print $ getZipList $ ZipList[100,100,100]
    print $ getZipList $ (+) <$> ZipList [1,2,3] <*> ZipList [100,100,100]
    print $ getZipList $ (+) <$> ZipList [1,2,3] <*> ZipList [100,100..]
    print $ getZipList $ max <$> ZipList [1,2,3,4,5,3] <*> ZipList [5,3,1,2]
    print $ getZipList $ (,,) <$> ZipList "dog" <*> ZipList "cat" <*> ZipList "rat"
    -- ふつうのリストのアプリカティブ
    print $ (+) <$> [1,2,3] <*> [3,2,1]
