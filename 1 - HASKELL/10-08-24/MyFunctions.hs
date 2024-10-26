module MyFunctions where


-- 1. Defina uma função `add10ToAll :: [Int] -> [Int]`, que receba uma lista e adicione o valor 10 a cada elemento dessa lista, produzindo outra lista. Use list comprehension. Exemplo de uso:
--    ```
--    > add10ToAll [0,1,2]
--    [10,11,12]
--    ```
add10ToAll :: [Int] -> [Int]
add10ToAll lst = [x+10 | x <- lst]


-- 2. Usando *list comprehension*, defina uma função `multN :: Int -> [Int] -> [Int]`, que receba um número `N` e uma lista, e multiplique cada elemento da lista por `N`, produzindo outra lista.
multN :: Int -> [Int] -> [Int]
multN n lst = [x*n | x <- lst]


-- 3. Usando a função de alta ordem `map`, defina a função `multN' :: Int -> [Int] -> [Int]`, equivalente à função do exercício anterior. Atenção ao nome da função (diferente do anterior).
multN' :: Int -> [Int] -> [Int]
multN' n lst = map (*n) lst


-- 4. Usando *list comprehension*, defina uma função `applyExpr :: [Int] -> [Int]`, que receba uma lista e calcule `3*x+2` para cada elemento `x` da lista, produzindo outra lista.
applyExpr :: [Int] -> [Int]
applyExpr lst = [3*x+2 | x <- lst]


-- 5. Reescreva a função do exercício anterior usando lambda e uma função de alta ordem. O novo nome da função será `applyExpr' :: [Int] -> [Int]`.
applyExpr' :: [Int] -> [Int]
applyExpr' lst = map (\x -> x*3+2) lst


-- 6. Usando *list comprehension*, escreva uma função `addSuffix :: String -> [String] -> [String]` , para adicionar um dado sufixo às strings contidas numa lista. Exemplo: 
--    ```
--    > addSuffix "@inf.ufsm.br" ["fulano","beltrano"]
--    ["fulano@inf.ufsm.br","beltrano@inf.ufsm.br"]
--    ```
addSuffix :: String -> [String] -> [String]
addSuffix suf str = [x++suf | x <- str]


-- 7. Usando *list comprehension*, defina uma função `selectGt5 :: [Int] -> [Int]`, que receba uma lista e selecione somente os valores maiores que 5, produzindo outra lista.
selectGt5 :: [Int] -> [Int]
selectGt5 lst = [x | x <- lst, x>5]


-- 8. Usando *list comprehension*, defina uma função `sumOdds :: [Int] -> Int`, que receba uma lista e obtenha o somatório dos valores ímpares, produzindo outra lista. Aproveite funções pré-definidas em Haskell.
sumOdds :: [Int] -> Int
sumOdds lst = sum [x | x <- lst, mod x 2 /= 0]


-- 9. Resolva a questão anterior sem usar *list comprehension*, criando a função `sumOdds' :: [Int] -> Int`.
sumOdds' :: [Int] -> Int
sumOdds' lst = sum (filter (\x -> mod x 2 /= 0) lst)


-- 10. Usando *list comprehension*, defina uma função `selectExpr :: [Int] -> [Int]`, que receba uma lista e selecione somente os **valores pares entre 20 e 50, inclusive**, produzindo outra lista.
selectExpr :: [Int] -> [Int]
selectExpr lst = [x | x <- lst, mod x 2 == 0,x >= 20, x <= 50]


-- 11. Escreva uma função `countShorts :: [String] -> Int`, que receba uma lista de palavras e retorne a quantidade de palavras dessa lista que possuem menos de 5 caracteres. Use *list comprehension*.
countShorts :: [String] -> Int
countShorts lst = length [x | x <- lst, length x < 5]


-- 12. Escreva uma função `calcExpr :: [Float] -> [Float]`, que calcule `x^2/2` para cada elemento `x` da lista de entrada e selecione apenas os resultados que forem maiores que 10. Use *list comprehension*. Exemplo de uso:
--    ```
--    > calcExpr [1.0, 1.5, 2.5, 3.5, 4.5]
--    [10.125]
--    ```
calcExpr :: [Float] -> [Float]
calcExpr lst = filter (\x -> x > 10) [x^2/2 | x <- lst]


-- 13. Escreva uma função `trSpaces :: String -> String`, que receba uma string e converta espaços (' ') em traços ('-'). Use *list comprehension*.
trSpaces :: String -> String
trSpaces str = [if x == ' ' then '-' else x | x <- str]


-- 14. Usando *list comprehension*, Defina uma função `selectSnd :: [(Int,Int)] -> [Int]`, que receba uma lista de tuplas e selecione somente os segundos elementos dessas tuplas, produzindo outra lista. Exemplo: 
--    ```
--    > selectSnd [(0,1),(3,4)]
--    [1,4]
--    ```
selectSnd :: [(Int,Int)] -> [Int]
selectSnd tuplas = [snd x | x <- tuplas]


-- 15. Em Haskell, a função `zip` combina elementos de duas listas, produzindo uma lista de tuplas. Por exemplo:

--    ```
--    > zip [1,2] "ab"
--    [(1,'a'),(2,'b')]
--    > zip [1..] "abcde"
--    [(1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e')]
--    ```

--    Usando a função `zip` com *list comprehension* e outras funções auxiliares, escreva uma função `dotProd :: [Int] -> [Int] -> Int` que calcule o somatório dos produtos dos pares de elementos de duas listas, conforme o exemplo:

--    ```
--    > dotProd [1,1,1,1] [2,2,2,2] -- 1*2 + 1*2 + 1*2 + 1*2
--    8
--    ```
dotProd :: [Int] -> [Int] -> Int
dotProd lst1 lst2 = sum ([fst x * snd x | x <- zip lst1 lst2])