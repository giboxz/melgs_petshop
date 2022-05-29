CREATE TABLE petshop (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cnpj VARCHAR(14),
    cep VARCHAR(8),
    estado VARCHAR(2),
    cidade VARCHAR(50),
    rua VARCHAR(50)
);

CREATE TABLE consulta (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_petshop INTEGER NOT NULL,
    id_animal INTEGER NOT NULL,
    id_veterinario INTEGER NOT NULL,
    created_at DATETIME,
    valor REAL,
    diagnostico TEXT,
    tratamento TEXT
);

CREATE TABLE produtos_petshop (
    id_produto INTEGER NOT NULL,
    id_petshop INTEGER NOT NULL
);

CREATE TABLE petshop_veterinario (
    id_petshop INTEGER NOT NULL,
    id_veterinario INTEGER NOT NULL
);

CREATE TABLE petshop_tipoexame (
    id_petshop INTEGER NOT NULL,
    id_exame INTEGER NOT NULL
);

CREATE TABLE veterinario (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    genero CHAR,
    nascimento DATE,
    cpf VARCHAR(11),
    cep VARCHAR (8),
    estado VARCHAR(2),
    cidade VARCHAR(50),
    rua VARCHAR(50),
    email VARCHAR(50),
    telefone VARCHAR(50),
    especialidade VARCHAR(50)
);

CREATE TABLE cliente (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    genero CHAR,
    nascimento DATE,
    cpf VARCHAR(11),
    cep VARCHAR (8),
    estado VARCHAR(2),
    cidade VARCHAR(50),
    rua VARCHAR(50),
    email VARCHAR(50),
    telefone VARCHAR(50)
);

CREATE TABLE animal (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    especie VARCHAR(50),
    raca VARCHAR(50),
    nascimento DATE
);

CREATE TABLE animal_cliente (
    id_animal INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL
);

CREATE TABLE registro_exame (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_animal INTEGER NOT NULL,
    id_exame INTEGER NOT NULL,
    valor REAL,
    resultado TEXT,
    created_at DATETIME
);

CREATE TABLE exame (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    valor REAL
);

CREATE TABLE produto (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descricao TEXT,
    categoria VARCHAR(50),
    valor REAL
);

CREATE TABLE estoque (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_produto INTEGER NOT NULL,
    created_at DATETIME,
    quantidade INTEGER
);

CREATE TABLE venda (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_produto INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL,
    created_at DATETIME,
    quantidade INTEGER,
    valor REAL
);