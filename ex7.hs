-- 7 - Defina a função joinToken :: a -> [[a]] -> [a] que recebe um valor e uma lista 
-- de listas e retorna a concatenação das sublistas usando o primeiro parâmetro como separador.
-- Exemplo:
-- joinToken ' ' ["this","is","a","test"] -> "this is a test"

joinToken :: a -> [[a]] -> [a]
joinToken l [] = []
joinToken l [x] = x
joinToken token (x:xs) = (x ++ [token] ++ joinToken token xs)