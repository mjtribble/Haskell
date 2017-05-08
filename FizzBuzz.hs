divBy :: Integral a => a -> a -> Bool
divBy x y = y 'mod' x == 0
divBy3 = divBy 3
divBy5 - divBy 5

fizzBuzz :: (Show a, Integral a) => a -> String
fizzBuzz x
	| ((divBy x) && (divBy5 x)) = "FizzBuzz"
	| divBy 3 x = "Fizz"
	| divBy 5 x = "Buzz"
	| otherwise = show x