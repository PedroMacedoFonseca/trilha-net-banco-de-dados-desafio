--1
SELECT
	Nome, 
	Ano
FROM Filmes

--2
SELECT
	Nome, 
	Ano, 
	Duracao
FROM Filmes
ORDER BY Ano ASC

--3
SELECT
	Nome, 
	Ano, 
	Duracao
FROM Filmes WHERE Nome = 'De Volta para o Futuro'

--4
SELECT
	Nome, 
	Ano, 
	Duracao
FROM Filmes WHERE Ano = 1997

--5
SELECT
	Nome, 
	Ano, 
	Duracao
FROM Filmes WHERE Ano >= 2000

--6
SELECT
	Nome, 
	Ano, 
	Duracao
FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7
SELECT Ano, COUNT(*) QuantidadePorAno 
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadePorAno DESC

--8
SELECT
	Id,
	PrimeiroNome,
	UltimoNome, 
	Genero
FROM Atores WHERE Genero = 'M'

--9
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,		
	Genero
FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

--10
SELECT 
	F.Nome,
	G.Genero
FROM
	Filmes F
	INNER JOIN FilmesGenero FG on F.Id = FG.IdFilme
	INNER JOIN Generos G on G.Id = FG.IdGenero

--11
SELECT 
	F.Nome,
	G.Genero
FROM
	Filmes F
	INNER JOIN FilmesGenero FG on F.Id = FG.IdFilme
	INNER JOIN Generos G on G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

--12
SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM Filmes

SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
FROM ElencoFilme E
	INNER JOIN Filmes F on E.IdFilme = F.Id
	INNER JOIN Atores A on E.IdAtor = A.Id