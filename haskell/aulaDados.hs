type Person = String
type Book = String
type DataBase = [(Person, Book)]

-- Mostra os livros emprestados de uma pessoa
books :: DataBase -> Person -> [Book]
books [] _ = []
books ((p,b):as) pessoa | p == pessoa = b : (books as pessoa)
                        | otherwise = books as pessoa

-- Mostra para quais pessoa um livro está emprestado
borrowers :: DataBase -> Book -> [Person]
borrowers [] _ = []
borrowers ((p,b):as) book | b == book = p : (borrowers as book)
                      | otherwise = borrowers as book

-- Retorna se o livro já está emprestado
borrowed :: DataBase -> Book -> Bool
borrowed db book | (borrowers db book) == [] = False
                 | otherwise = True

-- Retorna quantos livros uma pessoa está sendo emprestada
numBorrowed :: DataBase -> Person -> Int
numBorrowed [] _ = 0
numBorrowed ((p, b): as) pessoa | p == pessoa = 1 + (numBorrowed as pessoa)
                                | otherwise = numBorrowed as pessoa

-- Empresta
makeLoan :: DataBase -> Person -> Book -> DataBase
makeLoan db p b = (p,b) : db

-- Devolve (incompleta)
{--
returnLoan :: DataBase -> Person -> Book -> DataBase
returnLoan [] _ _ = []
returnLoan ((p, b): as) pessoa book | (p, b) == (pessoa, book) = [] : as
                                    | otherwise = (p, b) : as
--}