-- RECUPERANDO DADOS COM SELECT/FROM/WHERE/ORDER BY

SELECT COLUNA1 [[AS] APELIDOCOLUNA1],
COLUNA2 [[AS] APELIDOCOLUNA2],
…
COLUNAN [[AS] APELIDOCOLUNAN]
FROM TABELA
WHERE <CONDIÇÃO>
ORDER BY EXPRESSÃO1[ASC|DESC] [NULLS {FIRST|LAST}], [EXPRESSÃO2[ASC|DESC] [NULLS {FIRST|LAST}…];

-- RECUPERANDO DADOS COM O USO DO OPERADOR IN

SELECT NOME, DTNASCIMENTO
FROM ALUNO
WHERE EXTRACT (MONTH FROM DTNASCIMENTO) IN )7,8,9,10,11,12);

--RECUPERANDO DADOS COM O USO DO OPERADOR BETWEEN

SELECT NOME
FROM ALUNO
WHERE EXTRACT (YEAR FROM DTNASCIMENTO) BETWEEN 1985 AND 2005;

--RECUPERANDO DADOS COM O USO DO OPERADOR LIKE
-- OBS:	_ para ignorar qualquer caractere específico; % para ignorar qualquer padrão;

SELECT NOME
FROM ALUNO
WHERE NOME LIKE '%COSTA%';

--Listar o nome dos alunos que possuem a letra “A” na segunda posição do nome
SELECT NOME
FROM ALUNO
WHERE NOME LIKE '_%A%';

--Listar o nome e a data de nascimento dos alunos que não possuem a string “MARIA” fazendo parte do nome.
SELECT NOME, DTNASCIMENTO
FROM ALUNO
WHERE NOME NOT LIKE '%MARIA%';

--Quantos alunos possuem conta de e-mail no gmail?
SELECT COUNT(*) AS QUANTIDADE
FROM ALUNO
WHERE EMAIL LIKE '%GMAIL.%';

-- RECUPERANDO DADOS COM O USO DO OPERADOR NULL

--Listar o nome, a data de nascimento e o e-mail dos alunos que têm endereço eletrônico cadastrado.
SELECT NOME, DTNASCIMENTO, EMAIL
FROM ALUNO
WHERE EMAIL IS NOT NULL;

--Retornar o nome dos alunos sem e-mail cadastrado no banco de dados.
SELECT NOME
FROM ALUNO
WHERE EMAIL IS NULL;

-- RECUPERANDO DADOS USANDO ORDENAÇÃO DOS RESULTADOS

--Retornar o nome e a data de nascimento dos alunos, ordenando os resultados por nome, de maneira ascendente.
SELECT NOME, DTNASCIMENTO
FROM ALUNO
ORDER BY NOME;

--Retornar o nome e a data de nascimento dos alunos, ordenando os resultados de modo ascendente pelo mês de nascimento e, em seguida, pelo nome, também de modo ascendente.
SELECT NOME, DTNASCIMENTO
FROM ALUNO
ORDER BY EXTRACT(MONTH FROM DTNASCIMENTO) , NOME;
