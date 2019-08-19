--------------------- Slider 13 ----------------------------
allEqual :: Int -> Int -> Int -> Bool
allEqual n m p = (n == m) && (m == p)

-- Defina uma função que calcula o fatorial
fatorialfat :: Int -> Int
fatorialfat n | n == 1 = 1
              | n > 1 = n * fatorialfat (n-1) 

-- Compare se quatro números são iguais usando allEqual e sem
all4Equal :: Int -> Int -> Int -> Int -> Bool
all4Equal n m p q = (allEqual n m p) && (n == q)

all4Equal2 :: Int -> Int -> Int -> Int -> Bool
all4Equal2 n m p q = (n == m ) && (m == p) && (p == q)

-- retorna quantos parâmetros são iguais
howManyEqual :: Int -> Int -> Int -> Int 
howManyEqual n p q | allEqual n p q = 3
                   | (n == p) || (p == q) || (q == n) = 2
                   | otherwise = 0
-------------------------------------------------------------
{-

Defina uma função que dado um valor
inteiro s e um número de semanas n retorna
quantas semanas de 0 a n tiveram venda
igual a s

-}
sales :: Int -> Int
sales n = n

f :: Int -> Int -> Int
f s 0 | sales 0 == s = 1
      | otherwise = 0

f s n | (sales n == s) && (n > 0) = 1 + f s (n-1)
      | (sales n /= s) && (n > 0) = f s (n-1)