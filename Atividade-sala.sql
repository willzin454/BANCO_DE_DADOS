-- 												Atividade da primeira aula

-- CREATE DATABASE william;	-- a SQL criou uma primeira base de dados.
-- CREATE DATABASE william; 	-- não foi possivel criar uma mesma base dados identicas. 

-- DROP DATABASE william;      -- vai deletar a database
-- DROP DATABASE william;      -- vai apresentar erro pois ja foi eleminado
-- DROP DATABASE IF EXISTS william  -- remove condicionalmente a tabela somente se ela ja existe
-- CREATE DATABASE william;

-- 												Atividade da segunda aula (so adicionei as tabelas por conta de ser a atividade peoposta)

-- DROP TABLE IF EXISTS  estacionamento;

-- CREATE TABLE estacionamento(
-- id INT NOT NULL AUTO_INCREMENT
-- ,nome VARCHAR (255) NOT NULL
-- ,cnpj VARCHAR(255) NOT NULL UNIQUE
-- ,quantidade_de_vagas VARCHAR(255) NOT NULL
-- ,ativo CHAR (1) NOT NULL DEFAULT 'S'
-- ,quantidade_de_funcionarios VARCHAR(255) NOT NULL
-- ,cidade_id INT NOT NULL
-- ,CONSTRAINT pk_estacionamneto PRIMARY KEY (id)
-- ,CONSTRAINT fk_cidade_estacionamento FOREIGN KEY (cidade_id) REFERENCES cidade (id)
-- ,CONSTRAINT coluna_ativo_deve_ser_S_ou_N CHECK (ativo IN ('S','N'))
-- ,CONSTRAINT cidade_estacionamento UNIQUE (nome, cidade_id) 
-- );

-- INSERT INTO estacionamento(nome,cnpj,quantidade_de_vagas,quantidade_de_funcionarios,cidade_id) VALUES ('paranavaí','1234','20','2','1');
-- SELECT * FROM estacionamento;

-- ALTER TABLE estacionamento DROP CONSTRAINT coluna_ativo_deve_ser_S_ou_N;
-- ALTER TABLE estacionamento MODIFY COLUMN ativo ENUM ('S','N') NOT NULL;

-- DESC estacionamento;

-- DROP TABLE IF EXISTS  veiculo;

-- CREATE TABLE veiculo(
-- id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
-- ,cor VARCHAR(255) NOT NULL UNIQUE
-- ,ano CHAR(4) NOT NULL
-- ,placa VARCHAR(255) NOT NULL
-- );

-- INSERT INTO veiculo(cor,ano,placa) VALUES ('azul','2003','abc-1234');
-- SELECT * FROM veiculo;

-- DROP TABLE IF EXISTS  pagamento;

-- CREATE TABLE pagamento(
-- id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
-- ,data_ DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ,meio_de_pagamento VARCHAR(255) NOT NULL
-- ,valor VARCHAR(255) NOT NULL 
-- ,desconto VARCHAR(255) NOT NULL
-- );

-- INSERT INTO pagamento(meio_de_pagamento,valor,desconto) VALUES ('dinheiro','120,00','8%');
-- SELECT * FROM pagamento;

-- 											 Atividade da terceira aula

-- DROP DATABASE IF EXISTS banco_dados;

-- CREATE DATABASE banco_dados;

-- USE banco_dados;

-- CREATE TABLE estado(
-- id INT NOT NULL AUTO_INCREMENT
-- ,nome VARCHAR(200)
-- ,sigla CHAR(4)
-- ,CONSTRAINT pk_estado PRIMARY KEY (id)
-- );

-- INSERT INTO estado(nome,sigla) VALUES ('paraná','PR');
-- SELECT * FROM estado;

-- DROP TABLE IF EXISTS  cidade;

-- CREATE TABLE cidade(
-- id INT NOT NULL AUTO_INCREMENT
-- ,nome VARCHAR(255) NOT NULL UNIQUE
-- ,estado_id INT NOT NULL 
-- ,CONSTRAINT pk_cidade PRIMARY KEY (id)
-- ,CONSTRAINT fk_estado_cidade FOREIGN KEY (estado_id) REFERENCES estado (id)
-- ,CONSTRAINT estado_cidade UNIQUE (nome,estado_id)
-- );

-- INSERT INTO cidade(nome,estado_id) VALUES ('paranavaí','1');
-- SELECT * FROM cidade;

-- DROP TABLE IF EXISTS  estacionamento;

-- CREATE TABLE estacionamento(
-- id INT NOT NULL AUTO_INCREMENT
-- ,nome VARCHAR (255) NOT NULL
-- ,cnpj VARCHAR(255) NOT NULL UNIQUE
-- ,quantidade_de_vagas VARCHAR(255) NOT NULL
-- ,ativo CHAR (1) NOT NULL DEFAULT 'S'
-- ,quantidade_de_funcionarios VARCHAR(255) NOT NULL
-- ,cidade_id INT NOT NULL
-- ,CONSTRAINT pk_estacionamneto PRIMARY KEY (id)
-- ,CONSTRAINT fk_cidade_estacionamento FOREIGN KEY (cidade_id) REFERENCES cidade (id)
-- ,CONSTRAINT coluna_ativo_deve_ser_S_ou_N CHECK (ativo IN ('S','N'))
-- ,CONSTRAINT cidade_estacionamento UNIQUE (nome, cidade_id) 
-- );

-- INSERT INTO estacionamento(nome,cnpj,quantidade_de_vagas,quantidade_de_funcionarios,cidade_id) VALUES ('paranavaí','1234','20','2','1');
-- SELECT * FROM estacionamento;

-- ALTER TABLE estacionamento DROP CONSTRAINT coluna_ativo_deve_ser_S_ou_N;
-- ALTER TABLE estacionamento MODIFY COLUMN ativo ENUM ('S','N') NOT NULL;

-- DESC estacionamento;

-- CREATE TABLE cliente(
-- id INT NOT NULL AUTO_INCREMENT
-- ,nome VARCHAR(200) NOT NULL
-- ,cpf CHAR(11) NOT NULL UNIQUE
-- ,email VARCHAR(200) NOT NULL
-- ,CONSTRAINT pk_cliente PRIMARY KEY (id) 
-- );

-- INSERT INTO cliente(nome,cpf,email) VALUES ('william','07601046974','williamcarvalho493@gmail.com');
-- SELECT * FROM cliente;
-- DROP TABLE IF EXISTS  veiculo;

-- CREATE TABLE veiculo(
-- id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
-- ,cor VARCHAR(255) NOT NULL UNIQUE
-- ,ano CHAR(4) NOT NULL
-- ,placa VARCHAR(255) NOT NULL
-- ,modelo VARCHAR (200) NOT NULL
-- );

-- INSERT INTO veiculo(cor,ano,placa) VALUES ('azul','2003','abc-1234','');
-- SELECT * FROM veiculo;

-- DROP TABLE IF EXISTS  pagamento;

-- CREATE TABLE pagamento(
-- id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
-- ,data_ DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ,meio_de_pagamento VARCHAR(255) NOT NULL
-- ,valor VARCHAR(255) NOT NULL 
-- ,desconto VARCHAR(255) NOT NULL
-- );

-- INSERT INTO pagamento(meio_de_pagamento,valor,desconto) VALUES ('dinheiro','120,00','8%');
-- SELECT * FROM pagamento; 
