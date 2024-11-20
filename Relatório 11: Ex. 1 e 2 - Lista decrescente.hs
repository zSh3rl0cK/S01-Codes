module Main where

-- funçao para multiplicar o numero por 3
exerc1 :: Int -> Int
exerc1 x = 3*x

-- funcao para calcular o fatorial (caso o numero seja maior que 0) ou multiplicar por 2 (caso não seja)
exerc2 :: Int -> int
exerc2 num
  | num == 0 = 1
  | num > 0 = num * exerc2(num - 1)
  | otherwise num * 2

main = do
  let lista = [30,29..1]

  -- revertendo e multiplicando a lista
  let lista_reversa = reverse(map exerc1 lista)

  -- imprimindo a lista
  print(last lista)

  -- lendo um numero para utizar na funcao 2
  N <- getLine
  
  let N = read N

  -- imprimindo o fatorial ou o numero vezes 2
  print(exerc2 N)
