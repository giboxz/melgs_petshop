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

ALTER TABLE venda ADD CONSTRAINT fk_id_produto_venda
    FOREIGN KEY (id_produto)
    REFERENCES produto(id);

ALTER TABLE venda ADD CONSTRAINT fk_id_cliente_venda
    FOREIGN KEY (id_cliente)
    REFERENCES cliente(id);

ALTER TABLE produtos_petshop ADD CONSTRAINT fk_id_produto_produtos_petshop
    FOREIGN KEY (id_produto)
    REFERENCES produto(id);

ALTER TABLE produtos_petshop ADD CONSTRAINT fk_id_petshop_produtos_petshop
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






