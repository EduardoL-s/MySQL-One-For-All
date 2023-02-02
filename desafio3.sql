SELECT
	usuario.usuario_nome AS usuario,
    COUNT(historico.cançao_id) AS qt_de_musicas_ouvidas,
    SUM(ROUND((cançao.cançao_duraçao / 60), 2)) AS total_minutos
FROM SpotifyClone.usuario
	INNER JOIN SpotifyClone.historico ON historico.usuario_id = usuario.usuario_id
    INNER JOIN SpotifyClone.cançao ON historico.cançao_id = cançao.cançao_id
GROUP BY usuario_nome
ORDER BY usuario_nome;