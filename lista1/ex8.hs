import Data.List

primeFactors :: Int -> [(Int, Int)]
primeFactors l=map (\xs -> (head xs,length xs)) (group (fatorar l 2))
  where
    fatorar l m
      | l == 1 = []
      | l `mod` m == 0 = m : fatorar (l `div` m) m
      | otherwise = fatorar l (m+1)

-- 8 - Defina a função primeFactors :: Int -> [(Int,Int)] que fatora um número inteiro
-- em uma lista de pares (fator,frequência).

-- Exemplos
-- primeFactors 8 -> [(2,3)]
-- primeFactors 42 -> [(2,1),(3,1),(7,1)]

-- explicação para o uso do group:
-- Apesar de não ter sido vista em aula, encontrei essa maneira de realizar esse agrupamento em sub-listas(pares)
-- disponível em: https://hackage.haskell.org/package/base-4.17.0.0/docs/Data-List.html