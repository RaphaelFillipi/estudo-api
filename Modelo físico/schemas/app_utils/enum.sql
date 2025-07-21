-- Criação da enum para o estado civil
CREATE TYPE 
app_utils.enum_s_estudo_api_t_user_c_marital_status
AS ENUM (
	'Solteiro',
	'Casado',
	'Divorciado',
	'Viúvo'
);

-- Criação da enum para o nivel de escolaridade
CREATE TYPE 
app_utils.enum_s_estudo_api_t_user_c_education_level
AS ENUM (
	'Ensino fundamental',
	'Ensino fundamental incompleto'
	'Ensino médio',
	'Ensino médio incompleto',
	'Ensino superior',
	'Ensino superior incompleto',
	'Pós graduação',
	'Pós graduação incompleto'
);
