CREATE VIEW faturamento_atual as 
SELECT  
MIN(pla_valor) AS faturamento_minimo,
MAX(pla_valor) AS faturamento_maximo,
ROUND(AVG(pla_valor), 2) AS faturamento_medio,
ROUND(SUM(pla_valor), 2) AS faturamento_total
FROM SpotifyClone.planos AS p INNER JOIN SpotifyClone.usuarios AS u ON p.pla_id = u.pla_id;
