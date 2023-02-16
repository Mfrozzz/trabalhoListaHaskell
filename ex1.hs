-- 1 - Escreva uma função insere que receba um elemento e uma lista (tipagem genérica) 
-- e insere o elemento se somente e se ele ainda não pertence à lista. Como modificar a 
-- função para inserir ordenadamente elementos em listas previamente ordenadas?

insere l [] = [l]
insere l(x:xs) | l==x = x:xs
               |otherwise = x : insere l xs

-- 