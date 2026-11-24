CREATE DATABASE sistema_animes;
USE sistema_animes;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE estudios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    genero VARCHAR(100) NOT NULL,
    ano_criacao INT,
    imagem VARCHAR(255)
);

CREATE TABLE animes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudio_id INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    ano_lancamento INT,
    genero VARCHAR(100) NOT NULL,
    youtube_link VARCHAR(255),
    sinopse TEXT,
    imagem_capa VARCHAR(255),
    CONSTRAINT fk_anime_estudio
        FOREIGN KEY (estudio_id) REFERENCES estudios(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- usuário "aniWorld" e senha "202" (criptografada com bcrypt)
INSERT INTO usuarios (usuario, senha)
VALUES ('aniWorld', '$2y$12$ksSB6U5V96tKDgYetT.1De/faefndH9xRJeELALx20Q6PhgBqncu2');