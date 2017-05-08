main = do

-- print [ if mod x 2 == 0 then "Boom" else "Bam" | x <- [1..10] ]
-- print [ i | i <- [1..99], mod i 3 == 0 && mod i 7 ==0]
-- print [ i | i <- [1..99], mod i 3 == 0,  mod i 7 ==0]

--tuples cant mix types in lists, use tuples

print [5, 'a', 0]

--To check types
print :t 'a'
print :t "abc"
print :t "abc" x
let doubleVal x = x * 2
print :t x
print :t doubleVal


