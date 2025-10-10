CREATE DATABASE eventos_db;

USE eventos_db;

CREATE TABLE palestrantes (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100),
    email VARCHAR(100) NOT NULL
);

CREATE TABLE eventos (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    titulo VARCHAR(200) NOT NULL,
    data_evento DATE NOT NULL, 
    locais VARCHAR(200) NOT NULL,
    capacidade INT NOT NULL,
    palestrante_id INT NOT NULL
);

CREATE TABLE inscricoes (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    evento_id INT NOT NULL,
    nome_participante VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    data_inscricao TIMESTAMP NOT NULL,
    presente TINYINT
);

ALTER TABLE eventos
ADD CONSTRAINT fk_eventos_palestrantes
FOREIGN KEY (palestrante_id) REFERENCES palestrantes(id);

ALTER TABLE inscricoes
ADD CONSTRAINT fk_inscricoes_eventos
FOREIGN KEY (evento_id) REFERENCES eventos(id);

INSERT INTO palestrantes (nome, especialidade, email)
VALUES ('Maria Silva', 'especialista em Inteligência Artificial', 'maria@exemplo.com');

INSERT INTO palestrantes (nome, especialidade, email)
VALUES ('João Santos', 'especialista em Marketing Digital', 'joao@exemplo.com');

INSERT INTO eventos (titulo, data_evento, locais , capacidade, palestrante_id)
VALUES ('Workshop de IA', '2023-11-15', 'Auditório Principal', 100, 1 );

INSERT INTO eventos (titulo, data_evento, locais , capacidade, palestrante_id)
VALUES ('Conferência de Marketing', '2023-12-10', 'Sala de Convenções', 200, 2 );

INSERT INTO inscricoes (evento_id, nome_participante, email)
VALUES (1, 'Carlos Oliveira', 'carlos@email.com' );

INSERT INTO inscricoes (evento_id, nome_participante, email)
VALUES (1, 'Ana Souza', 'ana@email.com' );

INSERT INTO inscricoes (evento_id, nome_participante, email )
VALUES (2, 'Bruno Lima', 'bruno@email.com');



