# Agenda Telefonica

Esta é uma re-implementação de uma agenda telefonica usando uma linguagem funcional para o 4º trabalho de Linguagens de Programação do curso de Ciência da Computação na UFF-PURO no periodo remoto de 2021-1.

## Linguagem

Para a implementação desse trabalho foi escolhida a linguagem Haskell, por se tratar de um programa seguindo o paradigma funcional(Além de todas as outras linguagens terem sido vetadas)

## Implementação

* Os contatos da agenda serão do tipo Contato, uma tupla com nome, telefone, endereço e relação;
* A agenda será do tipo Agenda, uma lista de Contatos;
* O programa será implementado na classe Principal;
* Implementar as funções de busca na Agenda. Recebe um nome, ou parte deste, e retorna o Contato(o primeiro);
* Implementar as funções de inserção, alteração e remoção de Contatos da Agenda(Caso o nome de um contato já exista na agenda, a inserção se torna uma alteração);
* Implementar a função listar Agenda, que escreve os Contatos;
* Implementar os métodos salvar() e recuperar(), que manipulam os contatos em arquivos;(Ou não)

## Uso

* Inserir o Contato "Fulano", 99999999, "Rua A", "UFF";
* Inserir o Contato "Ciclano", 88888888, "Rua B", "Cederj";
* Inserir o Contato "Beltrano", 88889999, "Rua C", "Infância";
* Inserir o Contato "Fulano", 77777777, "Rua D", none;
* Remover o Contato "Ciclano";
* Listar o conteudo da Agenda;