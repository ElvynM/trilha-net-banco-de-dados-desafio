--1 - Buscar o nome e ano dos filmes

SELECT Nome, Ano from Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT * from Filmes order by Ano ASC

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT * FROM Filmes WHERE NOME like '%DE VOLTA %'


--4 - Buscar os filmes lançados em 1997

SELECT * FROM Filmes WHERE ANO like '%1997%'


--5 - Buscar os filmes lançados APÓS o ano 2000

SELECT * FROM filmes WHERE Ano > 2000;

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT * FROM Filmes WHERE Duracao > 100 and Duracao < 150 order by Duracao asc

-- 7 
SELECT Ano, COUNT(*) AS quantidade_filmes FROM Filmes GROUP BY Ano ORDER BY quantidade_filmes DESC;

--8 
SELECT TOP (1000) [Id]
      ,[PrimeiroNome]
      ,[UltimoNome]
      ,[Genero]
  FROM [Filmes].[dbo].[Atores] WHERE Genero = 'M'
-- 9
  SELECT TOP (1000) [Id]
      ,[PrimeiroNome]
      ,[UltimoNome]
      ,[Genero]
  FROM [Filmes].[dbo].[Atores] WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

  -- 10

  SELECT 
		F.Nome
		,G.Genero
  FROM [Filmes].[dbo].[FilmesGenero] FG
  INNER JOIN Filmes F 
  ON FG.IdFilme = F.Id
  INNER JOIN Generos G ON 
  FG.IdGenero = G.Id

  --11 
  SELECT 
		F.Nome
		,G.Genero
  FROM [Filmes].[dbo].[FilmesGenero] FG
  INNER JOIN Filmes F 
  ON FG.IdFilme = F.Id
  INNER JOIN Generos G ON 
  FG.IdGenero = G.Id WHERE Genero LIKE'%Mis%'

  -- 12

  SELECT 
		FI.Nome,
		AT.PrimeiroNome,
		AT.UltimoNome,
		EF.Papel
  FROM Filmes FI
  INNER JOIN ElencoFilme EF ON 
  FI.Id = EF.IdFilme
  INNER JOIN Atores AT ON 
  EF.IdAtor = AT.Id

