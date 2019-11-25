# Liguagens

## Linguagens de Expressões

### LE1
- Linguagem de valores inteiros constantes
- Operações matemáticas

```
eval :: Exp -> Integer
eval x = case x of
 EAdd exp0 exp -> eval exp0 + eval exp
 ESub exp0 exp -> eval exp0 - eval exp
 EMul exp0 exp -> eval exp0 * eval exp
 EDiv exp0 exp -> eval exp0 `div` eval exp
 EInt n -> n
 ```

### LE2
- Linguaguem 1 + Expressões constantes (let)
- Necessário um mapeamento entre indentificadores e valores

```
eval :: RContext -> Exp -> Integer
eval ctx x = case x of
 ELet [] exp -> eval ctx exp
 ELet ((Def id expr):ds) exp ->
 eval (update ctx (getStr id)(eval ctx expr))
 (ELet ds exp)
 EAdd exp0 exp -> eval ctx exp0 + eval ctx exp
 ESub exp0 exp -> eval ctx exp0 - eval ctx exp
 EMul exp0 exp -> eval ctx exp0 * eval ctx exp
 EDiv exp0 exp -> eval ctx exp0 `div` eval ctx exp
 EInt n -> n
 EVar id -> lookup ctx (getStr id)
 ```

 ## Linguaguens Imperativos

 ### LI1
- Variáveis, Atribuições, Controle de Fluxo
- Necessário um contexto: mapeamento dinâmico entre identicadores e valores
- Um programa é um comando

 ### LI2
- Funções, Expressões Booleanas
- Um programa é uma lista de funções

### LI2T
- LI2 + tipos (bool, int, string)



