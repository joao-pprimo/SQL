-- Comando para criar um database.
CREATE DATABASE BDESTUDO;
-- Comando para remover um database.
DROP DATABASE BDESTUDO;

-- CRIANDO TABELAS

-- sintaxe básica:

CREATE TABLE NOMETABELA (
COLUNA1 - TIPODEDADOS [RESTRIÇÃO],
COLUNAN - TIPODEDADOS [RESTRIÇÃO],
PRIMARY KEY (COLUNA),
FOREIGN KEY (COLUNA) REFERENCES NOMETABELA (COLUNA)
CONSTRAINT RESTRIÇÃO);

-- IDENTIFICAR NOME CORRESPONDENTE AO OID 

SELECT OID, DATNAME FROM PG_DATABASE;

-- ALTERAÇÃO DE TABELA
-- sintaxe básica:

ALTER TABLE <NOMETABELA> ADD <COLUNA><TIPODEDADOS> ;

-- Comando para alterar a tabela CURSO, adicionando coluna DTRECONH
ALTER TABLE CURSO ADD DTRECONH DATE;

-- Remoção coluna tabela
ALTER TABLE <NOMETABELA> DROP <COLUNA> ;

-- Comando para alterar a tabela CURSO, removendo a coluna DTRECONH
ALTER TABLE CURSO DROP DTRECONH ;

-- REMOÇÃO DE TABELA

DROP TABLE <NOMETABELA>;
-- Comando para remover a tabela CURSO
DROP TABLE CURSO;

-- CRIAÇÃO E ALTERAÇÃO DE TABELAS RELACIONADAS

-- Comando para remover a tabela NIVEL
DROP TABLE NIVEL;
-- Comando para remover a tabela NIVEL - remoção em cascata
DROP TABLE NIVEL CASCADE;

-- MANIPULAÇÃO DE LINHAS NAS TABELAS

CRUD - Create: INSERT Read: SELEC Update: UPDAT Delete: DELETE

-- INSERÇÃO DE LINHAS EM TABELA

INSERT INTO <NOMETABELA> (COLUNA1, COLUNA2,…,COLUNAn) VALUES (VALOR1, VALOR2,…,VALORn);

--ATUALIZAÇÃO DE LINHAS EM TABELA

UPDATE <NOMETABELA>
SET COLUNA1=VALOR1, COLUNA2=VALOR2,…,COLUNAn=VALORn
WHERE <CONDIÇÃO>;

-- REMOÇÃO DE LINHAS EM TABELA

DELETE FROM <NOMETABELA>
WHERE <CONDIÇÃO>;

-- TRANSAÇÕES NO POSTGRESQL

BEGIN-- início da transação
-- comandos
COMMIT-- transação confirmada
ROLLBACK-- transação cancelada
END-- mesma função do COMMIT