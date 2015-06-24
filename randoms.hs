import System.Random

-- -- 無限ジェネレータ
randoms' :: (RandomGen g, Random a) => g -> [a]
randoms' gen =
    let (value, newGen) = random gen
    in value:randoms' newGen

-- 有限なリストと新しいジェネレータを生成
finiteRandoms :: (RandomGen g, Random a, Num n) => n -> g -> ([a], g)
finiteRandoms 0 gen = ([], gen)
finiteRandoms n gen =
    let (value, newGen) = random gen
        (restOfList, finalGen) = finiteRandoms (n-1) newGen
    in (value:restOfList, finalGen)

main = do
    print $ take 5 $ randoms' (mkStdGen 11)
