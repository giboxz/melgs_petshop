/* Lógico_1: */

CREATE TABLE Clientes (
    id INTEGER PRIMARY KEY,
    nome VARCHAR,
    genero CHAR,
    cpf VARCHAR,
    estado VARCHAR,
    cidade VARCHAR,
    rua VARCHAR,
    cep VARCHAR,
    telefone VARCHAR,
    email VARCHAR
);

CREATE TABLE Animal (
    id INTEGER PRIMARY KEY,
    especie VARCHAR,
    nome VARCHAR,
    idade INTEGER,
    fk_Clientes_id INTEGER
);

CREATE TABLE Veterinarios (
    id INTEGER PRIMARY KEY,
    nome VARCHAR,
    cpf VARCHAR,
    estado VARCHAR,
    cidade VARCHAR,
    rua VARCHAR,
    cep VARCHAR,
    email VARCHAR,
    telefone VARCHAR,
    especialidade VARCHAR
);

CREATE TABLE Petshop (
    id INTEGER PRIMARY KEY,
    cnpj VARCHAR,
    estado VARCHAR,
    cidade VARCHAR,
    rua VARCHAR
);

CREATE TABLE Consulta (
    id INTEGER PRIMARY KEY,
    data_hora DATE,
    valor FLOAT,
    diagnostico VARCHAR,
    tratamento VARCHAR,
    fk_Veterinarios_id INTEGER,
    fk_Animal_id INTEGER,
    fk_Petshop_id INTEGER
);

CREATE TABLE Tipo_Exame (
    id INTEGER PRIMARY KEY,
    nome VARCHAR,
    valor FLOAT
);

CREATE TABLE Produtos (
    id INTEGER PRIMARY KEY,
    nome VARCHAR,
    descricao VARCHAR,
    categoria VARCHAR,
    valor FLOAT
);

CREATE TABLE petshop_tipoexame (
    fk_Petshop_id INTEGER,
    fk_Tipo_Exame_id INTEGER
);

CREATE TABLE petshop_veterinario (
    fk_Petshop_id INTEGER,
    fk_Veterinarios_id INTEGER
);

CREATE TABLE produtos_petshop (
    fk_Produtos_id INTEGER,
    fk_Petshop_id INTEGER
);

CREATE TABLE Compras (
    fk_Produtos_id INTEGER,
    fk_Clientes_id INTEGER,
    id INTEGER PRIMARY KEY,
    valor FLOAT
);

CREATE TABLE Exame (
    fk_Tipo_Exame_id INTEGER,
    fk_Animal_id INTEGER,
    id INTEGER PRIMARY KEY,
    nome TIMESTAMP,
    resultado VARCHAR,
    data_hora DATE,
    valor FLOAT
);
 
ALTER TABLE Animal ADD CONSTRAINT FK_Animal_2
    FOREIGN KEY (fk_Clientes_id)
    REFERENCES Clientes (id)
    ON DELETE CASCADE;
 
ALTER TABLE Consulta ADD CONSTRAINT FK_Consulta_2
    FOREIGN KEY (fk_Veterinarios_id)
    REFERENCES Veterinarios (id)
    ON DELETE CASCADE;
 
ALTER TABLE Consulta ADD CONSTRAINT FK_Consulta_3
    FOREIGN KEY (fk_Animal_id)
    REFERENCES Animal (id)
    ON DELETE CASCADE;
 
ALTER TABLE Consulta ADD CONSTRAINT FK_Consulta_4
    FOREIGN KEY (fk_Petshop_id)
    REFERENCES Petshop (id)
    ON DELETE CASCADE;
 
ALTER TABLE petshop_tipoexame ADD CONSTRAINT FK_petshop_tipoexame_1
    FOREIGN KEY (fk_Petshop_id)
    REFERENCES Petshop (id)
    ON DELETE SET NULL;
 
ALTER TABLE petshop_tipoexame ADD CONSTRAINT FK_petshop_tipoexame_2
    FOREIGN KEY (fk_Tipo_Exame_id)
    REFERENCES Tipo_Exame (id)
    ON DELETE SET NULL;
 
ALTER TABLE petshop_veterinario ADD CONSTRAINT FK_petshop_veterinario_1
    FOREIGN KEY (fk_Petshop_id)
    REFERENCES Petshop (id)
    ON DELETE SET NULL;
 
ALTER TABLE petshop_veterinario ADD CONSTRAINT FK_petshop_veterinario_2
    FOREIGN KEY (fk_Veterinarios_id)
    REFERENCES Veterinarios (id)
    ON DELETE SET NULL;
 
ALTER TABLE produtos_petshop ADD CONSTRAINT FK_produtos_petshop_1
    FOREIGN KEY (fk_Produtos_id)
    REFERENCES Produtos (id)
    ON DELETE SET NULL;
 
ALTER TABLE produtos_petshop ADD CONSTRAINT FK_produtos_petshop_2
    FOREIGN KEY (fk_Petshop_id)
    REFERENCES Petshop (id)
    ON DELETE SET NULL;
 
ALTER TABLE Compras ADD CONSTRAINT FK_Compras_2
    FOREIGN KEY (fk_Produtos_id)
    REFERENCES Produtos (id)
    ON DELETE SET NULL;
 
ALTER TABLE Compras ADD CONSTRAINT FK_Compras_3
    FOREIGN KEY (fk_Clientes_id)
    REFERENCES Clientes (id)
    ON DELETE SET NULL;
 
ALTER TABLE Exame ADD CONSTRAINT FK_Exame_2
    FOREIGN KEY (fk_Tipo_Exame_id)
    REFERENCES Tipo_Exame (id)
    ON DELETE SET NULL;
 
ALTER TABLE Exame ADD CONSTRAINT FK_Exame_3
    FOREIGN KEY (fk_Animal_id)
    REFERENCES Animal (id)
    ON DELETE SET NULL;