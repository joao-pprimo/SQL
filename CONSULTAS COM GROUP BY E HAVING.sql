-- GRUPO DE DADOS COM GROUP BY

-- Retornar o número de funcionários por sexo.

SELECT SEXO, COUNT(*) AS QUANTIDADE
FROM FUNCIONARIO
GROUP BY SEXO

-- Retornar a média salarial por sexo.
SELECT SEXO
	AVG(SALARIO) AS MEDIASALARIAL
FROM FUNCIONARIO
GROUP BY SEXO;

-- Retornar, por mês de aniversário, a quantidade de colaboradores, o menor salário, o maior salário e o salário médio. Ordene os resultados por mês de aniversário.
SELECT EXTRACT(MONTH FROM DTNASCIMENTO) AS MES,
	COUNT(*) AS QUANTIDADE,
	MIN(SALARIO) AS MENORSALARIO,
	ROUND(AVG(SALARIO)::NUMERIC,0) AS SALARIOMEDIO,
	MAX(SALARIO) AS MAIORSALARIO
FROM FUNCIONARIO
GROUP BY EXTRACT(MONTH FROM DTNASCIMENTO)
ORDER BY EXTRACT(MONTH FROM DTNASCIMENTO);

-- Retornar, por mês de aniversário, o mês, o sexo e a quantidade de colaboradores.
Apresentar os resultados ordenados pelo mês.
SELECT EXTRACT(MONTH FROM DTNASCIMENTO) AS MES,
	SEXO, 
	COUNT(*) AS QUANTIDADE
FROM FUNCIONARIO
GROUP BY EXTRACT(MONTH FROM DTNASCIMENTO),SEXO
ORDER BY EXTRACT(MONTH FROM DTNASCIMENTO);

-- GRUPO DE DADOS COM GROUP BY E HAVING

-- Suponha que o departamento de recursos humanos esteja estudando a viabilidade de oferecer bônus de 5% aos funcionários por mês de nascimento, mas limitado somente aos casos onde há mais de um colaborador aniversariando. Assim, para cada mês em questão, deseja-se listar o mês, o número de colaboradores e o valor do bônus.
SELECT EXTRACT(MONTH FROM DTNASCIMENTO) AS MES,
	COUNT(*) AS QUANTIDADE,
	SUM(SALARIO*0.05) AS TOTALBONUS
FROM FUNCIONARIO
GROUP BY EXTRACT(MONTH FROM DTNASCIMENTO)
HAVING COUNT(*)>1
ORDER BY EXTRACT(MONTH FROM DTNASCIMENTO);

