data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
           deriving (Eq, Ord, Show, Read, Bounded, Enum)

main = do
    print Monday
    print $ Monday == Monday
    print $ Sunday == Monday
    print $ Sunday > Monday
