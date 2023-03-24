-- 5 - Usando list comprehension, defina uma função que retorna o produto escalar 
-- de dois vetores representados por listas.

produtoEscalar xs ys = sum[x*y|(x,y) <- zip xs ys]