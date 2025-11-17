# bank_de_dados_senac
------*Descrição do Banco de Dados*------

O banco de dados criado é para uma livraria fictícia chamada LivrariaDB. Ele foi projetado para armazenar informações essenciais sobre autores, livros e clientes. O banco de dados possui três tabelas principais:

Autores: Armazena dados dos autores, como nome e nacionalidade.                     
Livros: Guarda informações dos livros, incluindo título, autor, preço, quantidade em estoque e ano de publicação.                
Clientes: Contém os dados dos clientes da livraria.

------*Objetivo do Projeto e Aprendizado*------

O objetivo deste projeto foi praticar e consolidar o uso dos comandos DDL (Data Definition Language) e DML (Data Manipulation Language) em SQL, criando um banco de dados do zero. Ao concluir o projeto, aprendi a:      

Planejar a estrutura de um banco de dados relacional.               
Criar tabelas e definir relacionamentos entre elas.             
Inserir, atualizar e excluir dados usando comandos SQL.               
Alterar a estrutura de tabelas existentes.               
Esses conhecimentos são fundamentais para o desenvolvimento de sistemas que dependem de armazenamento e manipulação de dados.                

------*Instruções para Executar o Script SQL*------

Abra seu gerenciador de banco de dados (por exemplo: MySQL Workbench, DBeaver, phpMyAdmin ou terminal do MySQL).
Crie uma nova conexão com seu servidor de banco de dados, se necessário.                
Abra o arquivo livraria.sql no editor do seu gerenciador.              
Execute o script inteiro. O script irá:             
Criar o banco de dados LivrariaDB.            
Criar as tabelas necessárias.           
Inserir alguns dados de exemplo.            
Demonstrar comandos de atualização e exclusão.             

------*Comandos DDL e DML em SQL: O que são e como usar?*------

Quando trabalhamos com bancos de dados relacionais, usamos a linguagem SQL para criar, modificar e manipular dados. Os comandos SQL são divididos em dois grandes grupos: DDL e DML. Vamos entender o que cada um faz e ver exemplos práticos!

------*O que é DDL (Data Definition Language)?*------

DDL significa "Linguagem de Definição de Dados". São comandos usados para definir a estrutura do banco de dados, como criar, alterar ou excluir tabelas e bancos de dados.

------*Comandos DDL mais comuns*------

CREATE: Cria um novo banco de dados ou tabela.             
ALTER: Altera a estrutura de uma tabela existente.            
DROP: Exclui uma tabela ou banco de dados.              

------*Exemplos práticos de DDL*------

1. Criar um banco de dados: CREATE DATABASE LivrariaDB;
2. Criar uma tabela: CREATE TABLE Livros (
    BookID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    AutorID INT,
    Preco DECIMAL(10,2),
    QuantidadeEstoque INT);
 3. Alterar uma tabela (adicionar uma coluna): ALTER TABLE Livros ADD AnoPublicacao INT;

------*O que é DML (Data Manipulation Language)?*------

DML significa "Linguagem de Manipulação de Dados". São comandos usados para inserir, atualizar, consultar ou excluir os dados armazenados nas tabelas.

Comandos DML mais comuns
INSERT: Insere novos dados em uma tabela.          
UPDATE: Atualiza dados já existentes.         
DELETE: Remove dados da tabela.          
SELECT: Consulta dados (não abordado aqui, mas também faz parte do DML).        

------*Exemplos práticos de DML*------

1. Inserir dados em uma tabela: INSERT INTO Livros (BookID, Titulo, AutorID, Preco, QuantidadeEstoque, AnoPublicacao)
VALUES (1, 'Dom Casmurro', 1, 39.90, 10, 1899);
2. Atualizar dados existentes: UPDATE Livros SET Preco = 42.90 WHERE BookID = 1;
3. Excluir dados: DELETE FROM Livros WHERE BookID = 1;

------*Resumindo*------

DDL: Define a estrutura do banco de dados (criar, alterar, excluir tabelas).       
DML: Manipula os dados dentro das tabelas (inserir, atualizar, excluir registros).         
Saber quando usar cada tipo de comando é fundamental para criar e gerenciar bancos de dados de forma eficiente!

Dica: Caso queira praticar, experimente criar suas próprias tabelas e inserir alguns dados usando esses comandos. Isso vai ajudar a fixar o conteúdo!
