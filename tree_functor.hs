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

instance Functor Tree where
    fmap f EmptyTree = EmptyTree
    fmap f (Node x left right)
                      = Node (f x) (fmap f left) (fmap f right)

main = do
    print $ fmap (*2) EmptyTree
    print $ fmap (*4) (foldr treeInsert EmptyTree [5,7,3])
    -- Node 12 EmptyTree (Node 28 (Node 20 EmptyTree EmptyTree) EmptyTree) すっげえ倍々
    print $ fmap (negate) (foldr treeInsert EmptyTree [5,7,3])
    -- Node (-3) EmptyTree (Node (-7) (Node (-5) EmptyTree EmptyTree) EmptyTree)
    -- 二分探索木を任意の関数で写した後の木も二分探索木のままであるという保証はどこにもありません
