-- Operações CRUD

-- CREATE (C) - INSERT

-- Inserção de dados nas tabelas:

-- Inserindo categorias
INSERT INTO categorias (nome, descricao)
VALUES ('Ficção Científica', 'Livros que exploram conceitos científicos');

INSERT INTO categorias (nome, descricao)
VALUES ('Romance', 'Narrativas centradas em relações amorosas');

INSERT INTO categorias (nome, descricao)
VALUES ('Ficção Distópica', 'Tipo de narrativa que imagina uma sociedade futura onde as coisas deram errado');

INSERT INTO categorias (nome, descricao)
VALUES ('Biografia', 'Gênero textual que narra a história da vida de uma pessoa');

INSERT INTO categorias (nome, descricao)
VALUES ('Esotéricos', 'Livros com conhecimentos ocultos, simbólicos, espirituais ou místicos');

INSERT INTO categorias (nome, descricao)
VALUES ('Poesia', 'Gênero literário que usa a linguagem de forma artística e rítmica');

INSERT INTO categorias (nome, descricao)
VALUES ('Auto-ajuda', 'Livros escritos para ajudar o leitor a melhorar algum aspecto da vida pessoal');

INSERT INTO categorias (nome, descricao)
VALUES ('Suspense', 'gênero que cria uma atmosfera de tensão, mistério e expectativa');

-- Inserindo livros
INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Fundação', '9788576572664', 1951, 1);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Orgulho e Preconceito', '9788544001820', 1813, 2);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('1984', '978-0141036144', 1949, 3);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('A Revolução dos Bichos', '978-0141036137', 1945, 3);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Autobiografia de um Iogue', '978-0876120791', 1946, 4);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Nada Pode Me Ferir', '978-1544512286', 2018, 4);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('O Caibalion', '978-1577314734', 1908, 5);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Corpus Hermeticum', '978-0486204494', 3, 5);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Romeu e Julieta', '978-0451523958', 1559, 6);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Poesia que Transforma', '978‑8543105758', 2018, 6);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Mais Esperto que o Diabo', '978-8543101655', 2011, 7);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('O Homem Mais Rico da Babilônia', '978-0451205360', 1926, 7);

-- READ (R) - SELECT

-- Consultas ao banco de dados:

-- Selecionar todos os livros

-- Selecionar livros com informações de categoria
-- UPDATE (U)

-- Atualização de registros:

-- Atualizando o ano de um livro

-- DELETE (D)

-- Exclusão de registros:

-- Removendo um livro específico

SELECT * FROM livros
WHERE ano > 1900;


DROP DATABASE IF EXISTS biblioteca;

CREATE DATABASE IF  NOT EXISTS biblioteca;

USE biblioteca;

-- Criar tabela categorias
-- Informar os campos e tipos
CREATE TABLE categorias (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    descricao VARCHAR(100)
);

CREATE TABLE livros (
	Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    Titulo VARCHAR(100) NOT NULL,
    Isbn VARCHAR(20) NOT NULL,
    Ano INT NOT NULL,
    Categoria_Id INT NOT NULL
);

ALTER TABLE livros
ADD CONSTRAINT fk_livros_categorias
FOREIGN KEY (Categoria_id) REFERENCES Categorias(id);

INSERT INTO categorias (nome, descricao)
VALUES ('Ficção Científica', 'Livros que exploram conceitos científicos');

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Fundação', '9788576572664', 1951, 1);

INSERT INTO categorias (nome, descricao)
VALUES ('Romance', 'Narrativas centradas em relações amorosas');

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Orgulho e Preconceito', '9788544001820', 1813, 2);

INSERT INTO categorias (nome, descricao)
VALUES ('Ficção Distópica', 'Tipo de narrativa que imagina uma sociedade futura onde as coisas deram errado');

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('1984', '978-0141036144', 1949, 3);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('A Revolução dos Bichos', '978-0141036137', 1945, 3);

INSERT INTO categorias (nome, descricao)
VALUES ('Biografia', 'Gênero textual que narra a história da vida de uma pessoa');

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Autobiografia de um Iogue', '978-0876120791', 1946, 4);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Nada Pode Me Ferir', '978-1544512286', 2018, 4);

INSERT INTO categorias (nome, descricao)
VALUES ('Esotéricos', 'Livros com conhecimentos ocultos, simbólicos, espirituais ou místicos');

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('O Caibalion', '978-1577314734', 1908, 5);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Corpus Hermeticum', '978-0486204494', 3, 5);

INSERT INTO categorias (nome, descricao)
VALUES ('Poesia', 'Gênero literário que usa a linguagem de forma artística e rítmica');

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Romeu e Julieta', '978-0451523958', 1559, 6);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Poesia que Transforma', '978‑8543105758', 2018, 6);

INSERT INTO categorias (nome, descricao)
VALUES ('Auto-ajuda', 'Livros escritos para ajudar o leitor a melhorar algum aspecto da vida pessoal');

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('Mais Esperto que o Diabo', '978-8543101655', 2011, 7);

INSERT INTO livros (Titulo, Isbn, Ano, Categoria_id)
VALUES ('O Homem Mais Rico da Babilônia', '978-0451205360', 1926, 7);

INSERT INTO categorias (nome, descricao)
VALUES ('Suspense', 'gênero que cria uma atmosfera de tensão, mistério e expectativa');