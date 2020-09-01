CREATE VIEW estatisticas_musicais AS
SELECT
  (SELECT count(*) FROM songs) AS cancoes,
  (SELECT count(*) FROM artists) AS artistas,
  (SELECT count(*) FROM albums) AS albuns;
