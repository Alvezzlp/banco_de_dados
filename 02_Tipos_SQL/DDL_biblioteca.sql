-- Criar o banco de dados
CREATE DATABASE biblioteca;

-- Escolher entre os BDs existentes qual será utilizado
USE biblioteca;

-- Criar a tabela livros
CREATE TABLE livros (
	Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    Titulo VARCHAR(100) NOT NULL,
    Isbn VARCHAR(20) NOT NULL,
    Ano INT NOT NULL,
    Categoria_Id INT NOT NULL
);

-- Criar a tabela categorias
CREATE TABLE Categorias (
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Descricao VARCHAR(100)		   
);

-- Criar o relacionamento entre as tabelas livros e categorias
ALTER TABLE livros
ADD CONSTRAINT fk_livros_categorias
FOREIGN KEY (Categoria_id) REFERENCES Categorias(id);

-- 1. Adicionando a chave estrangeira na tabela livros
-- 2. informando que a chave primaria relacionada está na tabela categorias
-- Assim: Um livro TEM uma categoria || Uma categoria PODE TER de 0 a n livros
