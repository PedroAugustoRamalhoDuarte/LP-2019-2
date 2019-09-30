data Expr = Lit Int |
            Add Expr Expr |
            Sub Expr Expr 

showExpr :: Expr -> String
showExpr (Lit n) = show n
showExpr (Add e1 e2) = (showExpr e1) ++ ['+'] ++ (showExpr e2)
showExpr (Sub e1 e2) = (showExpr e1) ++ ['-'] ++ (showExpr e2)            

{- List -}
data List t = Nil | Cons t (List t)
                deriving (Eq,Ord,Show)

toList :: List t -> [t]
toList Nil = []
toList (Cons a as) = a : toList(as)

fromList :: [t] -> List t
fromList [] = Nil
fromList (a:as) = Cons a (fromList as)

{- Tree -}
data Tree t = NilT |
              Node t (Tree t) (Tree t)
              deriving (Eq,Ord,Show)

depth :: Tree t -> Int
depth NilT = 0
depth (Node n l r) = 1 + maxi (depth l) (depth r)
   where maxi a b
           | a > b = a
           | otherwise = b         

colapse :: Tree t -> [t]
colapse NilT = []
colapse (Node n l r) = [n] ++ colapse l ++ colapse r


mapTree :: (t -> u) -> Tree t -> Tree u     
mapTree f NilT = NilT   
mapTree f (Node n l r) = Node (f n) (mapTree f l) (mapTree f r)

tree1 = (Node 1 (Node 2 (NilT) (NilT)) (Node 3 (NilT) (NilT)))
tree2 = (Node "abrir" (Node "fechar" (NilT) (NilT)) (Node "exercitar" (NilT) (NilT)))