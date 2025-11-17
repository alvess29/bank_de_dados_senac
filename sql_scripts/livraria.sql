-- Criação do banco de dados
CREATE DATABASE LivrariaDB;
USE LivrariaDB;

-- Criação da tabela Autores
CREATE TABLE Autores (
    AutorID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Nacionalidade VARCHAR(50)
);

-- Criação da tabela Livros
CREATE TABLE Livros (
    BookID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    AutorID INT,
    Preco DECIMAL(10,2),
    QuantidadeEstoque INT,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID)
);

-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20)
);

-- ALTERAR: Adicionando coluna AnoPublicacao à tabela Livros
ALTER TABLE Livros ADD AnoPublicacao INT;

-- INSERIR: Inserindo dados nas tabelas
INSERT INTO Autores (AutorID, Nome, Nacionalidade) VALUES (1, 'Machado de Assis', 'Brasileiro');
INSERT INTO Autores (AutorID, Nome, Nacionalidade) VALUES (2, 'Clarice Lispector', 'Brasileira');

INSERT INTO Livros (BookID, Titulo, AutorID, Preco, QuantidadeEstoque, AnoPublicacao)
VALUES (1, 'Dom Casmurro', 1, 39.90, 10, 1899);

INSERT INTO Livros (BookID, Titulo, AutorID, Preco, QuantidadeEstoque, AnoPublicacao)
VALUES (2, 'A Hora da Estrela', 2, 29.90, 5, 1977);

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone)
VALUES (1, 'João Silva', 'joao@email.com', '11999999999');

-- ATUALIZAR: Atualizando o preço de um livro
UPDATE Livros SET Preco = 42.90 WHERE BookID = 1;

-- EXCLUIR: Excluindo um livro
DELETE FROM Livros WHERE BookID = 2;