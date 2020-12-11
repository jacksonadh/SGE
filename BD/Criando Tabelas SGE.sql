--TABELA TRANSAÇÕES

CREATE TABLE 'transacoes' (
	'id_transcoes' int (6) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
	'tipo_transacoes' varchar(1) NOT NULL,
	'data_transacoes' date not null,
	'recebido_transacoes' boolean NOT NULL,
	'descricao_transacoes' varchar(40) NOT NULL,
	'valor_transacoes' int(8) NOT NULL,
	'id_categoria' int NOT NULL,
	'id_conta' int,

	CONSTRAINT fk_CatTrans FOREING KEY (id_categoria) REFERENCES categoria (id_categoria)
	CONSTRAINT fk_ContaTrans FOREING KEY (id_conta) REFERENCES conta (id_conta)
)DEFAULT CHARSET=utf8;

--TABELA CATEGORIA
CREATE TABLE 'categoria' (
	'id_categoria' int (6) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
	'descricao_categoria' varchar(40) NOT NULL,

)DEFAULT CHARSET=utf8;
/*Valor	Inteiro
Data	date
Categoria	texto
Conta	chave extrangeira
Recebido	Checkbox
Descição	Texto
Tag	texto
Fixa	Sim/Não
IdReceita	
SELECT SUM( IF( tipo_transacoes='r', valor, -valor ) ) AS saldo FROM transacoes*/
