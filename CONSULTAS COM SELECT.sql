-- SINTASE BÁSICA PARA O COMANDO SELECT

SELECT COLUNA1 [[AS] APELIDOCOLUNA1],
COLUNA2 [[AS] APELIDOCOLUNA2],

COLUNAN [[AS] APELIDOCOLUNAN]
FROM TABELA;

-- RENOMENADO TABELA

SELECT CODIGOALUNO AS "Matrícula",
NOME AS "Nome do discente",
DTNASCIMENTO AS "Data de nascimento"
FROM ALUNO;,

-- FUNÇÕES DE DATA E HORA 

current_date - data de hoje
current_time - hora do dia
current_timestamp - data e a hora
extract (campo from fonte) - subcampos de data e hora: século, ano, dia, mês

-- FUNÇÕES DE RESUMO OU DE AGREGAÇÃO

COUNT(*) - número de linhas da consulta
MIN(COLUNA/EXPRESSÃO) - menor de uma coluna ou expressão
AVG(COLUNA/EXPRESSÃO) - valor médio da coluna ou expressão
MAX(COLUNA/EXPRESSÃO) - maior valor de uma coluna ou expressão
SUM(COLUNA/EXPRESSÃO) - soma dos valores de uma coluna ou expressão
STDDEV(COLUNA/EXPRESSÃO - desvio padrão dos valores de uma coluna ou expressão
VARIANCE(COLUNA/EXPRESSÃO) - variância dos valores de uma coluna ou expressão

