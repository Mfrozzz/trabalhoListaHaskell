-- 9 - Implemente a função isPalindrome :: [a] -> Bool que verifica 
-- se uma lista é palindrome ou não.

-- Exemplos:
-- isPalindrome :: [a] -> Bool 
-- isPalindrome [1,2,3] -> False
-- isPalindrome "madamimadam" -> True

-- isPalindrome :: Eq a => [a] -> Bool ** ou [a] -> Bool

isPalindrome :: Eq a => [a] -> Bool 
isPalindrome xs = xs == (reverse xs)