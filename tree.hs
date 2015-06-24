-- 木構造とは、空の木、もしくは何らかの値と 2 つの木を含む要素からなる構造です。それって代数データ型で表してくれといわんばかりの構造ですね！
data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

-- 要素が 1 つしかない木を作るための補助関数
singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

-- 要素 x を木に挿入するための関数
treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
    | x == a = Node x left right
    | x < a = Node a (treeInsert x left) right
    | x > a = Node a left (treeInsert x right)

-- 要素 x を木に挿入するための関数
treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem x EmptyTree = False
treeElem x (Node a left right)
    | x == a = True
    | x < a = treeElem x left
    | x > a = treeElem x right

main = do
    let nums = [8,6,4,1,7,3,5]
    let numsTree = foldr treeInsert EmptyTree nums
    print numsTree
    print $ 8 `treeElem` numsTree
    print $ 100 `treeElem` numsTree
    print $ 99 `treeElem` numsTree

-- 結果はこんな感じだ
-- Node 5
--     (Node 3
--           (Node 1 EmptyTree EmptyTree)
--           (Node 4 EmptyTree EmptyTree)
--     )
--     (Node 7
--           (Node 6 EmptyTree EmptyTree)
--           (Node 8 EmptyTree EmptyTree)
--     )
