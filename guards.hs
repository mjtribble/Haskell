letterGrade :: Integral a => a -> Char
letterGrade grade
	| grade < 65 = 'F'
	| grade < 75 = 'D'
	| grade < 85 = 'C'
	| grade < 95 = 'B'
	| otherwise = 'A'

letterGrade grade
	| grade < 65 = 'F'
	| grade < 75 = 'D'
	| grade < 85 = 'C'
	| grade < 95 = 'B'
	| True = 'A'

letterGrade :: RealFloat a => a -> a -> Char
letterGrade midterm final
	| midterm * 0.4 + final * 0.6 < 65 = 'F'
	| midterm * 0.4 + final * 0.6 < 75 = 'D'
	| midterm * 0.4 + final * 0.6 < 85 = 'C'
	| midterm * 0.4 + final * 0.6 < 95 = 'B'
	| otherwise = 'A'

--generic minimum for strings etc.
mini :: Ord a => a -> a-> a
mini x y
	| x < y = x
	| otherwise


letterGrade :: RealFloat a => a -> a -> Char
letterGrade midterm final
	| weightedgrade < f = 'F'
	| weightedgrade < d = 'D'
	| weightedgrade < c = 'C'
	| weightedgrade < b = 'B'
	| otherwise = 'A'
	where weightedgrade = midterm * 0.4 + final * 0.6
	where (f, d, c, b) = (65, 70, 80, 90)


