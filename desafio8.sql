SELECT
	artista.artista_nome AS artista,
    album.album_nome AS album
FROM SpotifyClone.album
INNER JOIN SpotifyClone.artista ON album.artista_id = artista.artista_id
WHERE artista_nome = 'Elis Regina'
ORDER BY album_nome ASC;