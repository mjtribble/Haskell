import Lab2

main = do
    let emptyInt = [] :: [Int]
    let emptyChar = ""

    -- Warmup
    print (f [4.8, 7.3, 1.9] (-2.8))

    -- -- Pattern matching
    print (fForIntegral [4, 7, 1] (-2))

    -- -- Set membership
    print (member 19 [1..10])

    -- -- valid set
    print (validSet ["hi", "i", "hill", "hil"])

    -- -- set equal
    print ( setEq  ["5", "a"] ["a", "5"] )
    
    -- union
    print ( union  [1..4] [2..6])
    
    -- intersection
    print ( intersect "wxyz" "abyz")