SELECT
	cançao.cançao_nome AS nome,
    COUNT(historico.usuario_id) AS reproducoes
FROM SpotifyClone.usuario
INNER JOIN SpotifyClone.plano ON usuario.plano_id = plano.plano_id
INNER JOIN SpotifyClone.historico ON usuario.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.cançao ON historico.cançao_id = cançao.cançao_id
WHERE plano.plano_id = 1 OR plano.plano_id = 3
GROUP BY cançao.cançao_nome
ORDER BY cançao.cançao_nome ASC;