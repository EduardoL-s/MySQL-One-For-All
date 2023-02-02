SELECT
	COUNT(DISTINCT cançao.cançao_id) AS cancoes,
	COUNT( DISTINCT artista.artista_id) AS artistas,
    COUNT( DISTINCT album.album_id) AS albuns
FROM SpotifyClone.cançao INNER JOIN SpotifyClone.album INNER JOIN SpotifyClone.artista;