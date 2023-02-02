SELECT
	usuario.usuario_nome AS usuario,
    IF(MAX(historico.data_reproduçao) >= '2021-01-01 00:00:01', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuario
INNER JOIN SpotifyClone.historico ON historico.usuario_id = usuario.usuario_id
GROUP BY usuario_nome
ORDER BY usuario.usuario_nome;