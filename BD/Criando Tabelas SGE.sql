--TABELA TRANSAÇÕES
CREATE TABLE transacoes (
	id_transcoes int (6) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	tipo_transacoes varchar(1) NOT NULL,
	data_transacoes date not null,
	recebido_transacoes boolean NOT NULL,
	descricao_transacoes varchar(40) NOT NULL,
	valor_transacoes int(8) NOT NULL,
	id_categoria int (6) NOT NULL,
	id_conta int(6) NOT NULL

)DEFAULT CHARSET=utf8;

--TABELA CATEGORIA
CREATE TABLE categoria (
	id_categoria int (6)  PRIMARY KEY NOT NULL AUTO_INCREMENT,
	descricao_categoria varchar(40) NOT NULL,
	tipo_categoria varchar(1) NOT NULL

) DEFAULT CHARSET=utf8;

--TABELA CONTA
CREATE TABLE conta (
	id_conta int (6) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	banco varchar(40) NOT NULL,
	agencia int (20) NOT NULL,
	numero_conta int (20) NOT NULL,
	tipo_conta varchar(40) NOT NULL,
	saldo_conta int (40) NOT NULL

)DEFAULT CHARSET=utf8;

	--INSERINDO DADOS NAS TABELAS
	INSERT INTO transacoes VALUES
	(1,'c','2020-11-10','sim','JP supermercado',150,1,1),
	(2,'d','2020-13-10','sim','Tele1',50,2,2),
	(3,'c','2020-19-10','sim','Federal Car',180,3,3),
	(4,'d','2020-21-10','sim','Ninha Casa',350,4,4);

	INSERT INTO categoria VALUES
	(1,'supermercado','c'),
	(2,'internet','d'),
	(3,'seguro','c'),
	(4,'aluguel','d');

	INSERT INTO conta VALUES
	(1,'Itau',6283,046784,'c',58),
	(2,'Caixa',2119,124532,'c',2000),
	(3,'Brasil',1231,00123,'p',0),
	(4,'Bradesco',3020,505541,'p',125);
	
	--CRIANDO RELACIONAMENTOS
	ALTER TABLE transacoes
	ADD FOREIGN KEY (id_categoria)
	REFERENCES categoria (id_categoria);

	ALTER TABLE conta
	ADD FOREIGN KEY (id_conta)
	REFERENCES conta (id_conta);

/*
SELECT campos FROM tabela1 join tabela2 on pk=fk;
SELECT SUM( IF( tipo_transacoes='r', valor, -valor ) ) AS saldo FROM transacoes*/
