# Nim - Marcos Vinicius Boava - PLP - Lista II Haskell

## Regras:

<li>O tabuleiro é composto
de 5 linhas de asteriscos;</li>
<li>Dois jogadores revesam
a remoção de um ou
mais asteriscos do /m de
uma única linha;</li>
<li>O ganhador é o jogador
que remover o último
asterisco ou asteriscos
do tabuleiro.</li>
<br>

# Explicação
<li>O código foi dividido em certos tópicos, cada um com sua determinada função dentro do código</li>
<br>

O import de Data.Char é responsavel pela importação de funções como 'isDigit' e 'digitToInt'.<br>
'isDigit' retorna se o que foi digitado pelo user é um numero, e 'digitToInt' converte o caractere em numero inteiro.

<li><b>Funções tabuleiro</b></li>
A função 'tabuleiro' diz respeito as recomendações dadas no enunciado do trabalho, o qual define o tabuleiro inicial como uma lista de inteiros, indo de 5 até 1.<br><br>
A função 'printTabuleiro' possui como entrada uma lista de inteiros e retorna um tipo IO, o qual diz reseito a entrada e saida de dados. Com isso recebe um tabuleiro e imprime seu estado atual. 'unlines' e 'putStr' foram usados para concatenar a string e realizar a quebra de linha(Assim como o System.Out.println() do Java), e com isso é impresso pelo 'putStr', transformando a lista em '*', e imprimindo a quantidade dada por cada indice da lista que representa o tabuleiro.<br><br>
Com isso o tabuleiro é impresso, como exemplo o tabuleiro inicial.

````
1: *****
2: ****
3: ***
4: **
5: *
Jogador 1
Entre o número da linha:
````

A função 'newTabuleiro' recebe como parâmetro o tabuleiro atual representado por uma lista, o número da linha onde a jogada foi feita e o número de estrelas que foram removidas. É feita uma operação dentro de uma compreensão de listas, a qual verifica a linha, subtrai as estrelas para aquela linha, além disso usa o 'zip' para unir indice com linha correspondente.<br><br>
<li><b>Funções Controle</b></li>
A função 'turnoPlayer' toma um inteiro como entrada e retorna outro inteiro, é basicamente uma função que irá receber entradas de um sistema binário(1 ou 2), e irá retornar o seu <b>complemento/negação</b>. E caso haja qualquer erro que seja, retorna "Jogador Inválido".<br><br>
A função 'fim' recebe o tabuleiro e retorna um booleano, ou seja, ela basicamente verifica se o tabuleiro como um todo está vazio, caso esteja, em sua chamada irá retornar para o final do jogo.<br><br>
A função newLine é simplesmente usada para a quebra de linha mesmo, como se fosse um '\n' <br><br>
<li><b>Movimento e Validação</b></li>
A função 'movimentoValido' possui como parâmetros o tabuleiro, a linha e a quantidade de estrelas a serem retiradas. Usando o tabuleiro, com o operador '!!' vai no exato índice da tabela e vê se é possível retirar aquela quantidade de estrelas, caso o numero a ser tirado seja maior do que o que tem de estrelas, retorna uma falha e não realiza a ação, caso seja menor que 0 a mesma coisa, e caso a jogada seja com a retirada de mais de 3 estrelas, também há falha.<br><br>
A função 'digitoVálido' recebe um caractere/string e retorna uma entrada/saida de dados de tipo inteiro. Essa função passa uma mensagem(definida por exemplo na função 'playNim') e a imprime, com isso espera o jogador entrar com um valor, caso o que seja digitado for correspondente a um número, este é convertido de char/string para inteiro, caso contrário uma mensagem é exibida dizendo que a entrada é inválida.<br><br>
<li><b>O Jogo</b></li>
Na função 'playNim' é chamado o tabuleiro e o player, essa função tem por fim quando a função 'fim' der esse retorno, caso não tenha dado o seu fim, o jogo continua em progresso, mostrando sempre a cada rodada o tabuleiro, a vez de qual jogador, o qual digita a linha e a quantidade de estrelas a serem retiradas, passando por funções da ala de <b>movimento e validação</b>. Caso haja validade no movimento, a função chama a si mesma, passando o outro player como parametro.Se não é valido, é retornado a mensagem "Jogada inválida" e a função se chama para o mesmo player que jogou.<br><br>
Por fim, a função 'nim', é por ela que o jogo inicia, esta é uma função sem parametros de entrada, apenas uma declaração que possui retornos de entrada/saída, e esta função chama 'playNim', passando o tabuleiro inicial e o player 1 por padrão.<br>
Para Executar o Jogo digite:
<br>

````
ghci jogoNim.hs
````

E em seguida já dentro do interpretador:
<br>

````
nim
````