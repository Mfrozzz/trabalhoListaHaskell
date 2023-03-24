-- 10 - O problema das n rainhas consiste em posicionar em um tabuleiro de xadrez n×n,
-- n rainhas de modo que cada rainha não ataque as demais. Uma rainha pode atacar qualquer 
-- outra que esteja na mesma linha, coluna, ou nas mesmas diagonais. Considere que a representação 
--da solução será feita por meio de uma lista de pares (Linha, Coluna), de coordenadas das rainhas.
-- Defina a função ataca :: (Int,Int) -> [(Int,Int)] -> Bool que dada uma posição e uma lista de
-- posições diz se a primeira posição ataca qualquer uma das posições da lista.

-- Exemplos:
-- ataca (3,2) [(1,2),(2,4)] -> True 
-- ataca (2,2) [(1,3)] -> True 
-- ataca (3,1) [(1,2),(2,4)] -> False

ataca :: (Int, Int) -> [(Int, Int)] -> Bool
ataca (linha, coluna) posicoes = any (verifica (linha, coluna)) posicoes
  where
    verifica (linha, coluna) (linhaAtaca, colunaAtaca) = linha == linhaAtaca || coluna == colunaAtaca || abs (linha - linhaAtaca) == abs (coluna - colunaAtaca)