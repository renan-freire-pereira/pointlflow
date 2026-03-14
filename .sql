DROP TABLE IF EXISTS pontos;
DROP TABLE IF EXISTS terminal_acessos;
DROP TABLE IF EXISTS administradores;
DROP TABLE IF EXISTS funcionarios;

CREATE TABLE funcionarios (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    pin VARCHAR(5) NULL,
    identificador VARCHAR(100) NOT NULL UNIQUE,
    tipo_identificador ENUM('CPF', 'MATRICULA', 'OUTRO') NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
);

CREATE TABLE administradores (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    identificador VARCHAR(100) NOT NULL UNIQUE,
    tipo_identificador ENUM('CPF', 'MATRICULA', 'OUTRO') NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
);



CREATE TABLE pontos (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM('entrada','pausa','saida') NOT NULL,
    funcionario_id BIGINT UNSIGNED NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id)
);
