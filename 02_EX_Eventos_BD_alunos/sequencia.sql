-- Resolução

-- Implementação SQL

-- 1. Criação do Banco de Dados

-- Criação do banco de dados
CREATE DATABASE eventos_db;

-- Seleciona o banco de dados
USE eventos_db;

-- 2. Criação das Tabelas

-- Tabela de palestrantes
CREATE TABLE palestrantes (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100),
    email VARCHAR(100) NOT NULL
);

-- Tabela de eventos
CREATE TABLE eventos (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    titulo VARCHAR(200) NOT NULL,
    data_evento DATE NOT NULL, 
    locais VARCHAR(200) NOT NULL,
    capacidade INT NOT NULL,
    palestrante_id INT NOT NULL
);

-- Tabela de inscrições
CREATE TABLE inscricoes (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    evento_id INT NOT NULL,
    nome_participante VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    data_inscricao TIMESTAMP NOT NULL,
    presente TINYINT
);

-- Chaves estrangeiras
ALTER TABLE eventos
ADD CONSTRAINT fk_eventos_palestrantes
FOREIGN KEY (palestrante_id) REFERENCES palestrantes(id);

ALTER TABLE inscricoes
ADD CONSTRAINT fk_inscricoes_eventos
FOREIGN KEY (evento_id) REFERENCES eventos(id);

-- 3. Inserção de Dados Iniciais

-- Inserir palestrantes
6ª digitação aqui


-- Inserir eventos
7ª digitação aqui


-- Inserir algumas inscrições
8ª digitação aqui

