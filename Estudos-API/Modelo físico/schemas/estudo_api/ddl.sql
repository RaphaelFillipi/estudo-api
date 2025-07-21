-- Criação do schema estudo_api
DROP SCHEMA IF EXISTS estudo_api;
CREATE SCHEMA estudo_api;

-- Criação da tabela user
DROP TABLE IF EXISTS estudo_api.user;
CREATE TABLE estudo_api.user(
 -- Chaves primárias 
 id              UUID													NOT NULL,
 
 -- Dados do usuário
 name            VARCHAR(16)											NOT NULL,
 last_name       VARCHAR(64)											NOT NULL,
 picture         TEXT														NULL,
 cpf             VARCHAR(11)											NOT NULL,
 birth_date      DATE													NOT NULL,
 marital_status  app_utils.enum_s_estudo_api_t_user_c_marital_status	NOT NULL,
 education_level app_utils.enum_s_estudo_api_t_user_c_education_level	NOT NULL,
 gender          CHAR(1)												NOT NULL, 
 email           VARCHAR(32)											NOT	NULL,
 cep             VARCHAR(8)													NULL,
 state           VARCHAR(32)												NULL, 
 city            VARCHAR(32)												NULL,
 house_number    INTEGER												NOT NULL,
 complement      VARCHAR(32)												NULL,
 password        VARCHAR(128)												NULL,

 -- Declaração de chaves primárias
 CONSTRAINT pk_s_estudo_api_t_user_c_id	  PRIMARY KEY(id),

 -- Declaração de chaves únicas
 CONSTRAINT	uq_t_user_c_email UNIQUE (email)
);

-- Criação da tabela telephone
DROP TABLE IF EXISTS telephone;
CREATE TABLE telephone(
 -- Chaves primárias 
 id INTEGER   GENERATED ALWAYS AS IDENTITY,

 -- Dados do telefone 
 phone_number VARCHAR(20) NOT NULL,

 -- Chaves estrangeiras 
 owner_user	  UUID        NOT NULL,

 -- Declaração de chaves primárias 
 CONSTRAINT pk_s_estudo_api_t_telephone_c_id PRIMARY KEY (id),

 -- Declaração de chaves estrangeiras 
 CONSTRAINT fk_s_estudo_api_t_user_c_owner_user
 	FOREIGN KEY (owner_user)
	REFERENCES estudo_api.user(id)
	ON UPDATE RESTRICT 
	ON DELETE RESTRICT
);