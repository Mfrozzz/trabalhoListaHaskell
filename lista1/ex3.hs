-- 3 - Defina a função isIn :: Eq a => a -> [a] -> Bool que dados um valor e uma lista, 
-- retorna verdadeiro se o valor está na lista e falso caso contrário.
-- Exemplos:
-- isIn 1 [1,2,3] -> True
-- isIn 2 [1,5,4] -> False
-- isIn 'e' "Haskell" -> True

isIn :: Eq a => a -> [a] -> Bool
isIn l [] = False
isIn l (x:xs) | l == x = True
              | otherwise = isIn l xs