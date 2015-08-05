data ZipList a = ZipList [a]
data ZipList a = ZipList { getZipList :: [a] }
-- データ型
newtype ZipList a = ZipList { getZipList :: [a] }
