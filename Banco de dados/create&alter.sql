CREATE TABLE petshop (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    telefone VARCHAR(50),
    cnpj VARCHAR(14),
    cep VARCHAR(8),
    estado VARCHAR(2),
    cidade VARCHAR(50),
    rua VARCHAR(50)
);

CREATE TABLE produto (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    descricao TEXT,
    categoria VARCHAR(50),
    valor REAL
);

CREATE TABLE exame (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    valor REAL
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
    crmv VARCHAR(5),
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
    raca VARCHAR(20),
    nascimento DATE
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

CREATE TABLE registro_exame (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_animal INTEGER NOT NULL,
    id_exame INTEGER NOT NULL,
    valor REAL,
    resultado TEXT,
    created_at DATETIME
);

CREATE TABLE estoque (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_petshop INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    created_at DATETIME,
    quantidade INTEGER
);

CREATE TABLE venda (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_petshop INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL,
    created_at DATETIME,
    quantidade INTEGER,
    valor REAL
);

CREATE TABLE petshop_veterinario (
    id_petshop INTEGER NOT NULL,
    id_veterinario INTEGER NOT NULL
);

CREATE TABLE petshop_exame (
    id_petshop INTEGER NOT NULL,
    id_exame INTEGER NOT NULL
);


CREATE TABLE animal_cliente (
    id_animal INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL
);

ALTER TABLE consulta ADD CONSTRAINT fk_id_petshop_consulta
    FOREIGN KEY (id_petshop)
    REFERENCES petshop(id);

ALTER TABLE consulta ADD CONSTRAINT fk_id_animal_consulta
    FOREIGN KEY (id_animal)
    REFERENCES animal(id);

ALTER TABLE consulta ADD CONSTRAINT fk_id_veterinario_consulta
    FOREIGN KEY (id_veterinario)
    REFERENCES veterinario(id);

ALTER TABLE registro_exame ADD CONSTRAINT fk_id_animal_registro_exame
    FOREIGN KEY (id_animal)
    REFERENCES animal(id);

ALTER TABLE registro_exame ADD CONSTRAINT fk_id_exame_registro_exame
    FOREIGN KEY (id_exame)
    REFERENCES exame(id);

ALTER TABLE estoque ADD CONSTRAINT fk_id_produto_estoque
    FOREIGN KEY (id_produto)
    REFERENCES produto(id);

ALTER TABLE estoque ADD CONSTRAINT fk_id_petshop_estoque
    FOREIGN KEY (id_petshop)
    REFERENCES petshop(id);

ALTER TABLE venda ADD CONSTRAINT fk_id_produto_venda
    FOREIGN KEY (id_produto)
    REFERENCES produto(id);

ALTER TABLE venda ADD CONSTRAINT fk_id_cliente_venda
    FOREIGN KEY (id_cliente)
    REFERENCES cliente(id);

ALTER TABLE venda ADD CONSTRAINT fk_id_petshop_venda
    FOREIGN KEY (id_petshop)
    REFERENCES petshop(id);

ALTER TABLE petshop_veterinario ADD CONSTRAINT fk_id_petshop_veterinario
    FOREIGN KEY (id_petshop)
    REFERENCES petshop(id);

ALTER TABLE petshop_veterinario ADD CONSTRAINT fk_id_veterinario_veterinario
    FOREIGN KEY (id_veterinario)
    REFERENCES veterinario(id);

ALTER TABLE petshop_exame ADD CONSTRAINT fk_id_petshop_petshop_exame
    FOREIGN KEY (id_petshop)
    REFERENCES petshop(id);

ALTER TABLE petshop_exame ADD CONSTRAINT fk_id_exame_petshop_exame
    FOREIGN KEY (id_exame)
    REFERENCES exame(id);

ALTER TABLE animal_cliente ADD CONSTRAINT fk_id_animal_animal_cliente
    FOREIGN KEY (id_animal)
    REFERENCES animal(id);

ALTER TABLE animal_cliente ADD CONSTRAINT fk_id_cliente_animal_cliente
    FOREIGN KEY (id_cliente)
    REFERENCES cliente(id);
