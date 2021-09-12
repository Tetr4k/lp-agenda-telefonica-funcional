module Main where
type Nome = [Char]
type Numero = Int
type Endereco = [Char]
type Relacao = [Char]
type Contato = (Nome, Numero, Endereco, Relacao)
type Agenda = [Contato]
main :: IO ()
main = do
 putStrLn "Hello World"