-- 4  Defina a função strip :: Eq a => [a] -> [a] -> [a] que dadas duas listas, 
-- retira da segunda todos os elementos que ocorrem na primeira.
-- Exemplos:
-- strip [1,5] [1,2,5,5,3,5,1] -> [2,3] 
-- strip "a" "batata" -> "btt"
-- strip "a" "atata" -> "tt"
-- strip "at" "atata" -> ""

strip :: Eq a => [a] -> [a] -> [a]
strip [] [] = []
strip xs ys = filter (`notElem` xs) ys