-- Banco de dados
exampleBase =
    [("Alice","Postman Pat"),
    ("Anna","All Alone"),
    ("Alice","Spot"),
    ("Rory","Postman Pat")]

-- Exercício 1
type Person = String
type Book = String
type Database = [(Person, Book)]


member :: [Int] -> Int -> Bool
member lista inteiro 
    = case [listi | listi <- lista , listi == inteiro] 
        of [] -> False -- Comprehension is empty
           _  -> True  -- Anything but an empty list means, there was a match

 
books :: Database -> Person -> [Book]
books xs pessoa = [livro | (nome, livro) <- xs, nome == pessoa]

borrowers :: Database -> Book ->[Person]
borrowers xs livroi = [nome | (nome, livro) <- xs, livro == livroi]

borrowed :: Database -> Book -> Bool
borrowed db bookTitle
   = case [loanedBook | (person, loanedBook)<-db, bookTitle == loanedBook]
       of [] -> False -- Comprehension is empty
          _  -> True  -- Anything but an empty list means, there was a match

numBorrowed :: Database -> Person -> Int
numBorrowed xs pessoa = sum [1 | (nome, livro) <- xs, nome == pessoa]