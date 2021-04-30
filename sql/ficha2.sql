USE Campeonato
-- a. Sele��es simples

-- i. Mostrar todos os dados da tabela Equipas;
SELECT * 
FROM Equipa

-- ii. Mostrar todos os dados da equipa com o id igual a 12;
SELECT * 
FROM Equipa 
WHERE id_equipa = 12

-- iii. Mostrar o id e o nome de todas as equipas;
SELECT id_equipa , nome 
FROM Equipa 

-- iv. Mostrar o id, o nome e a idade dos treinadores com menos de 40 anos  de idade;
SELECT id_treinador, nome, idade 
FROM Treinador 
WHERE idade < 40 

-- v. Mostrar todos os dados da tabela Experiencias relativos aos treinadores que treinaram juniores ou que tenham mais do que 10 anos de experi�ncia;
SELECT *
FROM Experiencia
WHERE escalao='juniores' OR anos > 10

-- vi. Mostrar todos os dados dos treinadores com idade pertencente ao intervalo [45, 53] e por ordem decrescente da idade;
SELECT *
FROM Treinador
WHERE idade BETWEEN 45 AND 53  
ORDER BY idade DESC

-- vii. Mostrar todos os dados das bolas dos fabricantes Reebok e Olimpic;
SELECT * 
FROM Bola 
WHERE fabricante='Reebok' OR fabricante='Olimpic'

-- viii. Mostrar todos os dados dos treinadores cujo nome come�a pela letra A.
SELECT * 
FROM Treinador
WHERE nome LIKE 'a%'

-- b. Fun��es de agrega��o
-- i. Mostrar a quantidade de equipas que disputam o campeonato;
SELECT COUNT(*) 
FROM Equipa
 
-- ii. Mostrar a quantidade de fabricantes distintos que produzem bolas usadas no campeonato;
SELECT COUNT(DISTINCT fabricante)
FROM Bola

-- iii. Mostrar a quantidade de treinadores com idade superior a 40 anos;
SELECT COUNT(*)
FROM Treinador
WHERE idade > 40

-- c. Sele��es em m�ltiplas tabelas � Jun��es (joins)	
-- i. Mostrar o id das equipas que utilizam bolas do fabricante Adidas;


--ii. Mostrar o resultado da al�nea anterior, mas sem repeti��es;
--iii. Mostrar a m�dia das idades dos treinadores de juvenis; 
--iv. Mostrar todos os dados dos treinadores que treinaram juniores durante 5 ou mais anos;
--v. Mostrar todos os dados dos treinadores e das equipas por eles treinadas;
--vi. Mostrar os nomes e os telefones dos treinadores e os nomes das equipas por eles treinadas;
--vii. Mostrar todos os dados da equipa do Acad�mico e dos respetivos  treinadores;
--viii. Mostrar a idade do treinador mais velho do Acad�mico;
--ix. Mostrar o total de anos de experi�ncia do treinador Ant�nio do Acad�mic