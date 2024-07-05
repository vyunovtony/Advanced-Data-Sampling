SELECT *
FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

SELECT name
FROM tracks
WHERE duration < '3:50';

SELECT name
FROM collections
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM performers
WHERE name NOT LIKE '% %';

SELECT name
FROM tracks
WHERE name ILIKE '%мой%' OR name ILIKE '%my%';

SELECT g.name AS genre, COUNT(DISTINCT p.id) AS num_performers
FROM performers p
JOIN performer_genres pg ON p.id = pg.performer_id
JOIN genres g ON pg.genre_id = g.id
GROUP BY g.name;



SELECT COUNT(t.id) AS num_tracks
FROM tracks t
JOIN albums a ON t.album_id = a.id
WHERE a.release_date BETWEEN '2019-01-01' AND '2020-12-31';

SELECT a.name AS album, AVG(t.duration) AS avg_duration
FROM tracks t
JOIN albums a ON t.album_id = a.id
GROUP BY a.name
ORDER BY avg_duration DESC;

SELECT p.name
FROM performers p
WHERE p.id NOT IN (
    SELECT pa.performer_id
    FROM performer_albums pa
    JOIN albums a ON pa.album_id = a.id
    WHERE a.release_date >= '2020-01-01' AND a.release_date < '2021-01-01'
);

SELECT c.name AS collection
FROM collections c
JOIN track_collections tc ON c.id = tc.collection_id
JOIN tracks t ON tc.track_id = t.id
JOIN albums a ON t.album_id = a.id
JOIN performer_albums pa ON a.id = pa.album_id
JOIN performers p ON pa.performer_id = p.id
WHERE p.name = 'Specific Performer Name';




