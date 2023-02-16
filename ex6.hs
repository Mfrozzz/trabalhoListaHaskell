-- 6 - Defina a função splitToken :: Eq a => a -> [a] -> [[a]] que recebe um valor e 
-- uma lista e retorna uma lista de listas utilizando o valor dado como marcador.

-- Exemplos:
-- splitToken 2 [1,2,3,4,2,5,67,8,9,0,3] -> [[1],[3,4],[5,67,8,9,0,3]]

-- splitToken 3 [1,2,3,4,2,5,67,8,9,0,3] -> [[1,2],[4,2,5,67,8,9,0]] 

-- splitToken 0 [0,1,2,0,3,4,0,0] -> [[],[1,2],[3,4],[]]

splitToken :: Eq a => a -> [a] -> [[a]]
-- splitToken l xs = [xs | x <- xs , x == l ] não deu certo
splitToken l [] = [[]]
splitToken l (x:xs) |x==l =[] : splitToken l xs
                    |otherwise = (x:head (splitToken l xs)) : tail (splitToken l xs)