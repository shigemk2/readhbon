doubleMe x = x + x
doubleUs x y = x * 2 + y * 2
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1
conanO'Brien = "It's a-me, Conan O'Brien!"

main = do
    print $ doubleMe 9
    print $ doubleMe 8.3
    print $ doubleUs 4 9
    print $ doubleUs 2.3 34.2
    print $ doubleUs 28 88 + doubleMe 123
    print $ doubleSmallNumber' 100
    -- こういう書き方もできちゃう
    print $ conanO'Brien
