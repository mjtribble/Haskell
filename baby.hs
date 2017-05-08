doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber' x = (if x > 100 then x else x*2) +1

-- let x = ['Fizz' | i <-[1..100], i 'mod' 3 == 0]
-- let y = ['Buzz' | i <-[1..100], i 'mod' 5 == 0 ]

