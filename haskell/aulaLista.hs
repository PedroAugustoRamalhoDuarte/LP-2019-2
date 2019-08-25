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
