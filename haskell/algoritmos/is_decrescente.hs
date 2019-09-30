isDecrec :: [Integer] -> Bool
isDecrec [] = True
isDecrec (a:as) | maiorQueProximo a as = True
                | otherwise = False

maiorQueProximo :: Integer -> [Integer] -> Bool
maiorQueProximo a (b:as) = a >= b

f :: Integer -> Integer
f a = a + 2

g :: [Integer] -> Integer
g [] = 0
g (a : as) = f a + g as