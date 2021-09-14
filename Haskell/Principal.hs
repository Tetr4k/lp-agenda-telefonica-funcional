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

prefixo :: Nome -> Nome -> Bool
prefixo [] nomeBase = True
prefixo nomeTeste [] = False
prefixo nomeTeste nomeBase
 | head nomeTeste == head nomeBase = prefixo (tail nomeTeste) (tail nomeBase) -- toUpper
 | otherwise = False

buscar :: Nome -> Agenda -> Contato
buscar nomeContato [] = ("", 0, "", "")
buscar nomeContato agenda
 | prefixo nomeContato (nome (head agenda)) = head agenda
 | otherwise = buscar nomeContato (tail agenda)

existe :: Nome -> Agenda -> Bool 
existe nomeContato [] = False
existe nomeContato agenda
 | nomeContato == nome (head agenda) = True
 | otherwise = existe nomeContato (tail agenda)

alterar :: Contato -> Agenda -> Agenda
alterar contato [] = []
alterar contato agenda
 | nome contato == nome (buscar (nome contato) agenda) = contato : tail agenda
 | otherwise = head agenda : alterar contato (tail agenda)

inserir :: Contato -> Agenda -> Agenda
inserir contato [] = [contato]
inserir contato agenda
 | existe (nome contato) agenda = alterar contato agenda
 | otherwise = agenda ++ [contato]

remover :: Nome -> Agenda -> Agenda
remover nomeContato [] = []
remover nomeContato agenda
 | nomeContato == nome (head agenda) = tail agenda
 | otherwise = head agenda : remover nomeContato (tail agenda)

strContato :: Contato -> [Char]
strContato (nomeContato, numeroContato, enderecoContato, relacaoContato) = nomeContato ++ " " ++ show numeroContato ++ " " ++ enderecoContato ++ " " ++ relacaoContato

listar :: Agenda -> [Char]
listar [] = []
listar agenda = strContato(head agenda) ++ "\n" ++ listar (tail agenda)

main :: IO ()
main = do
 let agenda1 = inserir ("Fulano", 99999999, "Rua A", "UFF") []
 let agenda2 = inserir ("Ciclano", 88888888, "Rua B", "Cederj") agenda1
 let agenda3 = inserir ("Beltrano", 88889999, "Rua C", "Infancia") agenda2
 let agenda4 = inserir ("Fulano", 77777777, "Rua D", "UFF") agenda3
 let agenda5 = remover "Ciclano" agenda4
 putStrLn (listar agenda5)