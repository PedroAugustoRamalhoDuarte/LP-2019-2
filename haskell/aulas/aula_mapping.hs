-- Ao quadrado
sqr :: Int -> Int
sqr a = a * a

isCrescent :: (Int -> Int) -> Int -> Bool
isCrescent _ 0 = True
isCrescent f n = (f(n-1) <= f n) && isCrescent f (n-1)

-- Eleva os itens ao quadrado (mapping)
sqrlist :: [Int] -> [Int]
sqrlist list = map sqr list

-- retorna a soma dos quadros dos itens (folding)
somaSqr :: [Int] -> Int
somaSqr list = foldr (+) 0 (map sqr list)

-- manter na lista todos os itens maiores que zero
filterMaiorZero :: [Int] -> [Int]
filterMaiorZero list = filter (>0) list