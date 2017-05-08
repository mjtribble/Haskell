sumForKey l k = sum [ snd t | t <- l, fst t ==k]

sumForKeyRecursive [] k = 0
sumForKeyRecursive (t:ts) k = ( if k ==fst t then snd t else 0 ) + sumForKeyRecursive ts k
sumForKeyLCPM l k = sum [ value | (key,value) <-l, key ==k ]


lucky :: (Integral a) => a-> String
lucky a = "Not lucky."
lucky 7 = "Lucky number 7!"

luckyIf a = if a ==7 then "Lucky number 7!" else "Not lucky."

--inferenceExample [1,2,3] = True
--inferenceExample a = False
inferenceExample ( 1:2:3:[]) = True
