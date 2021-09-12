module Principal where

type Nome = [Char]
type Numero = Int
type Endereco = [Char]
type Relacao = [Char]
type Contato = (Nome, Numero, Endereco, Relacao)
type Agenda = [Contato]

main :: IO ()
main = do
-- Inserir o Contato "Fulano", 99999999, "Rua A", "UFF";
-- Inserir o Contato "Ciclano", 88888888, "Rua B", "Cederj";
-- Inserir o Contato "Beltrano", 88889999, "Rua C", "Infância";
-- Inserir o Contato "Fulano", 77777777, "Rua D", none;
-- Remover o Contato "Ciclano";
-- Listar o conteudo da Agenda;
 putStrLn "Hello World"
