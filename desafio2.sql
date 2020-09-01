CREATE VIEW estatisticas_musicais as 
SELECT  
	(SELECT count(can_id) FROM cancoes) AS cancoes,
	(SELECT count(art_id) FROM artistas) AS artistas,
	(SELECT count(alb_id) FROM albuns) AS albuns;