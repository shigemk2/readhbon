import System.Random

threeCoins :: StdGen -> (Bool, Bool, Bool)
threeCoins gen =
    -- genを渡しては受け取り、っていうのを繰り返す
    let (firstCoin, newGen) = random gen
        (secondCoin, newGen') = random newGen
        (thirdCoin, newGen'') = random newGen'
    in (firstCoin, secondCoin, thirdCoin)

main = do
    -- 種が一緒だから返ってくる値も一緒
    print $ threeCoins (mkStdGen 21)
    print $ threeCoins (mkStdGen 21)
    print $ threeCoins (mkStdGen 22)
    print $ threeCoins (mkStdGen 543)
    print $ threeCoins (mkStdGen 544)
