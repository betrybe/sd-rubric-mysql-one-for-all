CREATE VIEW faturamento_atual AS
SELECT 
   ROUND(min(p.value),2) as faturamento_minimo,
   ROUND(max(p.value),2) as faturamento_maximo,
   ROUND(avg(p.value),2) as faturamento_medio,
   ROUND(sum(p.value),2) as faturamento_total
FROM plans AS p
INNER JOIN users AS u ON u.plan_id=p.plan_id;
