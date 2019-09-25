double :: [Int] -> [Int] 
double [] = []
double (a:as) = 2 * a : double as

member :: Int -> [Int] -> Bool
member x [] = False
member x (a:as) | x == a = True
              | x /= a = member x as

digits :: String -> String
digits [] = []
digits (a:as) | a >= '0' && a <= '9' = a : digits as
              | otherwise = digits as

sumPairs :: [(Int, Int)] -> [Int]
sumPairs [] = []
sumPairs ((x,y):as) = x + y : sumPairs as

zipp :: [t] -> [u] -> [(t,u)]
zipp (a:as) (b:bs) = (a,b):zip as bs
zipp _ [] = []
zipp [] _ = []

maior :: [Int] -> Int
maior[x] = x
maior (x:xs) | (x > maior xs) = x
             | otherwise = maior xs

-- Compreensões de listas
-- doubleList xs = [2*a|a <- xs]
-- doubleIfEven xs = [2*a|a <- xs, isEven a] 