SELECT
	cançao.cançao_nome AS cancao,
    COUNT(historico.usuario_id) AS reproducoes
FROM SpotifyClone.cançao
INNER JOIN SpotifyClone.historico ON historico.cançao_id = cançao.cançao_id
GROUP BY cançao_nome
ORDER BY reproducoes DESC, cançao_nome ASC
LIMIT 2;