import Control.Applicative

main = do
    print $ getZipList $ ZipList [(+1),(*100),(*5)] <*> ZipList [1,2,3]
