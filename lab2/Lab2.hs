
module Lab2
(f, fForIntegral, member, validSet, compareList, setEq, union, intersect
) where

import Data.List (sort)
import Data.List (delete)


-------------------------------------------------------------------------------
-- Warmup
-- This takes in a number list and a number,
-- Adds the number to each element of the list
-- Returns the modified list
f list k =
    -- a
    if null list
    -- b
    then []
    -- c
    else head list + k : f (tail list) k

-------------------------------------------------------------------------------
-- Pattern Matching
-- This takes in a integer list and an integer
-- Adds the integer to each element of the list
-- Returns modified list
fForIntegral :: Integral a => [a] -> a -> [a] 
fForIntegral intList j =  
    if null intList     --if the list is null
        then []         --return empty set
    else head intList + j : fForIntegral (tail intList) j   --else
                                                                  
------------------------------------------------------------------------------- 
-- Set membership
-- This is basically the solution found on http://learnyouahaskell.com/recursion tutorial you asked us to read. Although I did try a number of other things first with no success:    
-- member e list  = [if x == e then True else False  | x <- list]
-- member e list    
    -- | e == x  = True  
    -- | otherwise = False
    -- where [x|x<-list]

-- This takes in an element and a list and determines if the elememt occurs in the list
-- Returns True if the element exists in the list
-- Retruns False if it does not. 
member :: (Eq a) => a -> [a] -> Bool   
member e [] = False
member e (x:xs)    
    | e == x  = True  
    | otherwise = e `member` xs

-------------------------------------------------------------------------------
-- Valid set
-- This takes in a list and determines if it is a valid set
-- Returns True if it contains no repeated elements
-- Returns False if any element is repeated
validSet :: (Eq a) => [a] -> Bool   
validSet [] = True                 --base case, the list is empty, no elements are repeated. 
validSet (x:xs)    
    | member x xs == True = False  --if the first element exists anywhere else in the rest of the list return False
    | otherwise = validSet xs      --otherwise recursivly call validSet with the tail of the list.

-------------------------------------------------------------------------------
-- Set equal
--This takes in two lists and determines if they are "set equal" by sorting them, 
--and calling the compareList function to determine if they are equalivilant
setEq ::(Ord a) => [a] -> [a] -> Bool
setEq xs ys = compareList (sort xs) (sort ys) --calls compareList with sorted lists

--This recursive function takes in two lists, 
--Returns True if they are equal, and False if they are not. 
compareList :: (Eq a) => [a] -> [a] -> Bool
compareList [] [] = True    --Base case: both lists are empty
compareList _ [] = False    --Base case: 1 of the lists are empty    
compareList [] _ = False
compareList (x:xs) (y:ys)
    | x == y = compareList xs ys    --if the head elements are equal call with the tails 
    | otherwise = False             --because the lists are sorted, if the heads are not equal the lists are not equal sets. 


-------------------------------------------------------------------------------
-- Union
--This recursive function takes in two lists 
--Returns the union of the lists
union :: (Eq a) => [a] -> [a] -> [a]
union [] [] = []    --Base cases: Both lists are empty return empty list. 
union [] xs = xs    --      one of the lists is empty, return the non empty list.    
union xs [] = xs
union (x:xs) ys     
    | x `member` ys == True = union xs ys   --if x (head of xs) is in ys, remove x and recall the union function with xs and ys
    | otherwise =  union xs (x:ys)          --if x is not in ys, remove x from xs and append to ys, recall the union function


-------------------------------------------------------------------------------
-- Intersecton
--This recursive fundtion takes in two lists
--Returns the intersection 
intersect :: (Eq a) => [a] -> [a] -> [a]
intersect [] [] = []    --Base case: If any of the lists are empty return the empty list
intersect [] ys = []        
intersect xs [] = []
intersect (x:xs) ys
    | x `member` ys = x : intersect xs (x `delete` ys)  --if x is in the ys list, it will be apart of the intersection set, append it to the returned list. 
                                                        --call intersection with x removed from both lists. 
    | otherwise = intersect xs (x `delete` ys)          --if x is not within the ys list. remove it from both lists and call intersect with modified lists.
    


























