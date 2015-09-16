-- Endoの実例
import Data.Monoid
import Data.Foldable

main = do
    -- 左から
    print $ appEndo( foldMap (\x -> if even x then Endo (x *) else Endo(+ x)) [1,12,3,34,33] ) 0
    print $ appEndo( foldMap (\x -> if even x then Endo (x *) else Endo(+ x)) [1,12,3,34,32] ) 0
    print $ appEndo( foldMap (\x -> if even x then Endo (x *) else Endo(+ x)) [1,12,3,34,34] ) 0
    print $ ((((33*)34+)3*)12+1)
