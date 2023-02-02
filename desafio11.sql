SELECT
	cançao_nome AS nome_musica,
    CASE
		WHEN cançao_nome LIKE '%Bard%' THEN REPLACE(cançao_nome, 'Bard', 'QA')
        WHEN cançao_nome LIKE '%Amar%' THEN REPLACE(cançao_nome, 'Amar', 'Code Review')
        WHEN cançao_nome LIKE '%Pais%' THEN REPLACE(cançao_nome, 'Pais', 'Pull Requests')
        WHEN cançao_nome LIKE '%SOUL%' THEN REPLACE(cançao_nome, 'SOUL', 'CODE')
        WHEN cançao_nome LIKE '%SUPERSTAR%' THEN REPLACE(cançao_nome, 'SUPERSTAR', 'SUPERDEV')
        ELSE null
	END AS novo_nome
FROM SpotifyClone.cançao
WHERE cançao_nome LIKE '%Bard%'
	OR cançao_nome LIKE '%Amar%'
    OR cançao_nome LIKE '%Pais%'
    OR cançao_nome LIKE '%SOUL%'
    OR cançao_nome LIKE '%SUPERSTAR%'
ORDER BY cançao_nome DESC;