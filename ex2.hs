-- 2 - Defina uma função recursiva que dada uma lista de inteiros, retorna uma nova lista 
-- contendo os elementos de valor superior a um número n qualquer. Depois, reescreva esta 
-- função utilizando lista por compreensão.

funcaoMaiores :: [Int] -> Int -> [Int]
funcaoMaiores [] l = []
funcaoMaiores (x:xs) l | x > l= x :funcaoMaiores xs l
                       | otherwise = funcaoMaiores xs l

--
funcaoMaiores' xs l=[x |x <- xs,x > l]