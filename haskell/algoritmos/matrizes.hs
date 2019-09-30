m1 = [[1, 2], [3, 4]]
m2 = [[5, 6, 7], [8, 9, 10]]


multMatriz :: [[Int]] -> [[Int]] -> [[Int]]


em l c = fold (+) (zipWith (*) l c)

elemAt 0 (a:as) = a
elemAt n l@(a:as) | n <= (lenght l) = elemAt(n - 1) as
col n m = map (elemAt n) 