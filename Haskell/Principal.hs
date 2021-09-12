module Principal where

type Nome = [Char]
type Numero = Int
type Endereco = [Char]
type Relacao = [Char]
type Contato = (Nome, Numero, Endereco, Relacao)
type Agenda = [Contato]

nome :: Contato -> Nome
nome (a, _, _, _) = a

numero :: Contato -> Numero
numero (_, a, _, _) = a

endereco :: Contato -> Endereco
endereco (_, _, a, _) = a

relacao :: Contato -> Relacao
relacao (_, _, _, a) = a

listar :: Agenda -> [Contato]
listar [] = []
listar agenda = head agenda : listar (tail agenda)

inserir :: Contato -> Agenda -> Agenda
inserir contato [] = [contato]
inserir contato agenda = agenda ++ [contato]

main :: IO ()
main = do
 let agenda = []

-- Inserir o Contato "Fulano", 99999999, "Rua A", "UFF";
-- Inserir o Contato "Ciclano", 88888888, "Rua B", "Cederj";
-- Inserir o Contato "Beltrano", 88889999, "Rua C", "Infância";
-- Inserir o Contato "Fulano", 77777777, "Rua D", none;
-- Remover o Contato "Ciclano";

 putStrLn ("Contatos" ++ listar agenda)