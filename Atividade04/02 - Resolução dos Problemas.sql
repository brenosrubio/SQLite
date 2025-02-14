-- Consulta 1: Retornar a média de Notas dos Alunos em história.

SELECT AVG(VALOR_NOTA) MEDIA
FROM NOTAS
WHERE ID_DISCIPLINA = 2;


-- Consulta 2: Retornar as informações dos alunos cujo Nome começa com 'A'.

SELECT *
FROM ALUNOS
WHERE NOME_ALUNO LIKE 'A%';


-- Consulta 3: Buscar apenas os alunos que fazem aniversário em fevereiro.

SELECT * FROM ALUNOS
WHERE STRFTIME('%m', DATA_NASCIMENTO) = '02';


-- Consulta 4: Realizar uma consulta que calcula a idade dos Alunos.

SELECT
    NOME_ALUNO,
    DATA_NASCIMENTO,
    STRFTIME('%Y', CURRENT_DATE) - STRFTIME('%Y', DATA_NASCIMENTO) AS IDADE
FROM
    ALUNOS;


-- Consulta 5: Retornar se o aluno está ou não aprovado. Aluno é considerado aprovado se a sua nota foi igual ou maior que 6.

SELECT 
id_aluno As Aluno, 
valor_nota AS Notas,
CASE WHEN valor_nota >= 6 THEN 'APROVADO' 
ELSE 'REPROVADO' 
END AS Resultado
FROM Notas;
