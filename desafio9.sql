SELECT
	COUNT(cançao_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuario
INNER JOIN SpotifyClone.historico ON historico.usuario_id = usuario.usuario_id
WHERE usuario_nome = 'Barbara Liskov';