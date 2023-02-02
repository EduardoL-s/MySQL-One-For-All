SELECT
	artista.artista_nome AS artista,
    album.album_nome AS album,
    COUNT(seguindo.usuario_id) AS seguidores
FROM SpotifyClone.album
INNER JOIN SpotifyClone.artista ON album.artista_id = artista.artista_id
INNER JOIN SpotifyClone.seguindo ON artista.artista_id = seguindo.artista_id
GROUP BY album_nome, artista_nome
ORDER BY seguidores DESC, artista ASC, album ASC;