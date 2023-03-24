import Data.Char

-- funcoes tabuleiro
tabuleiro :: [Int]
tabuleiro = [5, 4, 3, 2, 1]

printTabuleiro :: [Int] -> IO ()
printTabuleiro tab = putStr $ unlines [(show linha) ++ ": " ++ replicate estrelas '*' | (estrelas, linha) <- zip tab [1 ..]]

newTabuleiro :: [Int] -> Int -> Int -> [Int]
newTabuleiro tab linha j = [if i == linha then estrelas - j else estrelas | (estrelas, i) <- zip tab [1 .. length tab]]

-- funcoes controle
turnoPlayer :: Int -> Int
turnoPlayer 1 = 2
turnoPlayer 2 = 1
turnoPlayer _ = error "Jogador inválido"

fim :: [Int] -> Bool
fim tab = all (== 0) tab

newline :: IO ()
newline = putStrLn ""

--movimento e validacao
movimentoValido :: [Int] -> Int -> Int -> Bool
movimentoValido tab linha j = tab !! (linha - 1) >= j && j > 0 && j <=3

digitoValido :: String -> IO Int
digitoValido message = do
                        putStr message
                        x <- getChar
                        newline
                        if isDigit x then
                          return (digitToInt x)
                          else do
                                putStrLn "Entrada inválida"
                                digitoValido message

--jogo
playNim :: [Int] -> Int -> IO ()
playNim tab player| fim tab = do
                                putStrLn $ "Jogador " ++ show (turnoPlayer player) ++ " venceu!"  
                  | otherwise = do
                                printTabuleiro tab
                                putStrLn $ "Jogador " ++ show player
                                linha <- digitoValido "Entre o número da linha: "
                                estrelas <- digitoValido "Entre o número de estrelas para remover: "
                                if movimentoValido tab linha estrelas then
                                  playNim (newTabuleiro tab linha estrelas) (turnoPlayer player)
                                  else do
                                        putStrLn "Jogada inválida"
                                        playNim tab player

nim :: IO ()
nim = playNim tabuleiro 1