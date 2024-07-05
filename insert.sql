-- Заполнение таблицы жанров
INSERT INTO genres (name)
VALUES
    ('Rock'),
    ('Pop'),
    ('Hip-Hop'),
    ('Electronic');

-- Заполнение таблицы исполнителей
INSERT INTO performers (name)
VALUES
    ('The Beatles'),
    ('Michael Jackson'),
    ('Eminem'),
    ('Daft Punk');

-- Заполнение таблицы связей между исполнителями и жанрами
INSERT INTO performer_genres (performer_id, genre_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (1, 2),
    (2, 1);

-- Заполнение таблицы альбомов
INSERT INTO albums (name, release_date)
VALUES
    ('Sgt. Pepper''s Lonely Hearts Club Band', '1967-06-01'),
    ('Thriller', '1982-11-30'),
    ('The Marshall Mathers LP', '2000-05-23');

-- Заполнение таблицы связей между исполнителями и альбомами
INSERT INTO performer_albums (performer_id, album_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Заполнение таблицы треков
INSERT INTO tracks (name, duration, album_id)
VALUES
    ('A Day in the Life', '4:45', 1),
    ('Lucy in the Sky with Diamonds', '3:28', 1),
    ('Billie Jean', '4:54', 2),
    ('Beat It', '4:18', 2),
    ('Stan', '6:44', 3),
    ('The Real Slim Shady', '4:44', 3);

-- Заполнение таблицы сборников
INSERT INTO collections (name, release_year)
VALUES
    ('Greatest Hits of the 60s', 2000),
    ('Best of the 80s', 2005),
    ('Summer Vibes', 2010),
    ('Classic Rock Anthems', 2015);

-- Заполнение таблицы связей между треками и сборниками
INSERT INTO track_collections (track_id, collection_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 2),
    (5, 3),
    (6, 3),
    (1, 4),
    (3, 4);