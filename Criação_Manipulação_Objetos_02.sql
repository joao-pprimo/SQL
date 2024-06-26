CREATE TABLE CURSO (
CODIGOCURSO int NOT NULL,
NOME char(90) NOT NULL UNIQUE,
DATACRIACAO date NULL,
CODIGONIVEL int NULL,
CONSTRAINT CHAVEPCURSO PRIMARY KEY (CODIGOCURSO),
FOREIGN KEY (CODIGONIVEL) REFERENCES NIVEL (CODIGONIVEL) );
CREATE TABLE DISCIPLINA (
CODIGODISCIPLINA int NOT NULL,
NOME char(90) NOT NULL,
CARGAHORARIA int NOT NULL,
CONSTRAINT DISCIPLINA_pk PRIMARY KEY (CODIGODISCIPLINA) );
CREATE TABLE CURSODISCIPLINA (
CODIGOCURSO int NOT NULL,
CODIGODISCIPLINA int NOT NULL,
CONSTRAINT CURSODISCIPLINA_pk PRIMARY KEY (CODIGOCURSO,CODIGODISCIPLINA));
ALTER TABLE CURSODISCIPLINA ADD CONSTRAINT CURSODISCIPLINA_CURSO
FOREIGN KEY (CODIGOCURSO) REFERENCES CURSO (CODIGOCURSO) ;
ALTER TABLE CURSODISCIPLINA ADD CONSTRAINT CURSODISCIPLINA_DISCIPLINA
FOREIGN KEY (CODIGODISCIPLINA) REFERENCES DISCIPLINA (CODIGODISCIPLINA) ;
INSERT INTO CURSO (CODIGOCURSO,NOME,DATACRIACAO) VALUES (1,'Sistemas de Informação','19/06/1999');
INSERT INTO CURSO (CODIGOCURSO,NOME,DATACRIACAO) VALUES (2,'Medicina','10/05/1990');
INSERT INTO CURSO (CODIGOCURSO,NOME,DATACRIACAO) VALUES (3,'Nutrição','19/02/2012');
INSERT INTO CURSO (CODIGOCURSO,NOME,DATACRIACAO) VALUES (4,'Pedagogia','19/06/1999');
INSERT INTO DISCIPLINA (CODIGODISCIPLINA, NOME, CARGAHORARIA) VALUES (1,'Leitura e Produção de Textos',60);
INSERT INTO DISCIPLINA (CODIGODISCIPLINA, NOME, CARGAHORARIA) VALUES (2,'Redes de Computadores',60);
INSERT INTO DISCIPLINA (CODIGODISCIPLINA, NOME, CARGAHORARIA) VALUES (3,'Computação Gráfica',40);
INSERT INTO DISCIPLINA (CODIGODISCIPLINA, NOME, CARGAHORARIA) VALUES (4,'Anatomia',60);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (1,1);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (1,2);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (1,3);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (2,1);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (2,3);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (3,1);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (3,3);
INSERT INTO CURSODISCIPLINA(CODIGOCURSO,CODIGODISCIPLINA) VALUES (3,30);
INSERT INTO DISCIPLINA (CODIGODISCIPLINA, NOME, CARGAHORARIA)
VALUES (4,'Anatomia',60);
INSERT INTO DISCIPLINA (CODIGODISCIPLINA, NOME, CARGAHORARIA)
VALUES (NULL,'Biologia Celular e Molecular',60);
UPDATE DISCIPLINA SET CARGAHORARIA=70 WHERE CODIGODISCIPLINA=2;
UPDATE DISCIPLINA SET CARGAHORARIA=70 WHERE NOME='Redes de Computadores';
UPDATE DISCIPLINA SET CARGAHORARIA=CARGAHORARIA*1.2;
UPDATE CURSO SET CODIGOCURSO=6 WHERE CODIGOCURSO=4;
UPDATE CURSO SET CODIGOCURSO=10 WHERE CODIGOCURSO=1;
ALTER TABLE CURSODISCIPLINA
DROP CONSTRAINT CURSODISCIPLINA_CURSO,
ADD CONSTRAINT CURSODISCIPLINA_CURSO
FOREIGN KEY (CODIGOCURSO) REFERENCES CURSO (CODIGOCURSO)
ON UPDATE CASCADE ;
UPDATE CURSO SET CODIGOCURSO=10 WHERE CODIGOCURSO=1;
DELETE FROM DISCIPLINA WHERE CODIGODISCIPLINA=4;
DELETE FROM DISCIPLINA WHERE CODIGODISCIPLINA=1;
ALTER TABLE CURSODISCIPLINA
DROP CONSTRAINT CURSODISCIPLINA_DISCIPLINA,
ADD CONSTRAINT CURSODISCIPLINA_DISCIPLINA
FOREIGN KEY (CODIGODISCIPLINA) REFERENCES DISCIPLINA (CODIGODISCIPLINA)
ON DELETE CASCADE ;
DELETE FROM DISCIPLINA WHERE CODIGODISCIPLINA=1;
DELETE FROM CURSODISCIPLINA;
DELETE FROM CURSO;
DELETE FROM DISCIPLINA;
