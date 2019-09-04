-- Quick Sort com o primeiro termo sendo o pivo
qs [] = []
qs(a:as) = qs[e|e <- as, e <= a] ++ [a] ++ qs[e|e <- as, e > a]