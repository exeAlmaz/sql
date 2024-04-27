INSERT INTO albums(name, year) VALUES ('Зона любэ', '1994-01-01');
INSERT INTO albums(name, year) VALUES ('эскадрон', '1991-01-01');
INSERT INTO albums(name, year) VALUES ('Здравствуй это я', '2020-01-01');
INSERT INTO albums(name, year) VALUES ('Твой первый диск', '2019-01-01');

INSERT INTO perfomers(alias) VALUES ('Любэ');
INSERT INTO perfomers(alias) VALUES ('Руки Вверх');
INSERT INTO perfomers(alias) VALUES ('Олег Газманов');
INSERT INTO perfomers(alias) VALUES ('Григорий Лепс');
INSERT INTO perfomers(alias) VALUES ('Тима Белларуских');

INSERT INTO genres(name) VALUES ('Поп');
INSERT INTO genres(name) VALUES ('Шансон');
INSERT INTO genres(name) VALUES ('Рок');


INSERT INTO tracks(albums_id, name, duration) VALUES ('2', 'Дорога', '300');
INSERT INTO tracks(albums_id, name, duration) VALUES ('3', 'Эскадрон', '200');
INSERT INTO tracks(albums_id, name, duration) VALUES ('3', 'Свежий ветер', '221');
INSERT INTO tracks(albums_id, name, duration) VALUES ('2', 'Дорога', '218');
INSERT INTO tracks(albums_id, name, duration) VALUES ('4', 'Прости', '247');
INSERT INTO tracks(albums_id, name, duration) VALUES ('4', 'парень', '235');
INSERT INTO tracks(albums_id, name, duration) VALUES ('5', 'Я больше не напишу', '191');
INSERT INTO tracks(albums_id, name, duration) VALUES ('5', 'Витаминка', '176');


INSERT INTO perfomersalbums(albums_id, perfomers_id) VALUES ('1', '19');	
INSERT INTO perfomersalbums(albums_id, perfomers_id) VALUES ('2', '15');
INSERT INTO perfomersalbums(albums_id, perfomers_id) VALUES ('3', '18');
INSERT INTO perfomersalbums(albums_id, perfomers_id) VALUES ('4', '17');
INSERT INTO perfomersalbums(albums_id, perfomers_id) VALUES ('5', '20');


INSERT INTO perfomersgenres(genres_id, perfomres_id) VALUES ('7', '15');
INSERT INTO perfomersgenres(genres_id, perfomres_id) VALUES ('6', '17');
INSERT INTO perfomersgenres(genres_id, perfomres_id) VALUES ('8', '17');	
INSERT INTO perfomersgenres(genres_id, perfomres_id) VALUES ('6', '18');	
INSERT INTO perfomersgenres(genres_id, perfomres_id) VALUES ('7', '18');
INSERT INTO perfomersgenres(genres_id, perfomres_id) VALUES ('7', '19');	
INSERT INTO perfomersgenres(genres_id, perfomres_id) VALUES ('8', '19');
INSERT INTO perfomersgenres(genres_id, perfomres_id) VALUES ('6', '20');


INSERT INTO collection(name, year) VALUES ('Хиты под гитару', '2015-03-02');
INSERT INTO collection(name, year) VALUES ('Шансон', '2018-04-03');
INSERT INTO collection(name, year) VALUES ('сборник популярных 2020', '2020-05-10');
INSERT INTO collection(name, year) VALUES ('Золотой грамофон 2022', '2022-10-15');


INSERT INTO trackcollection(track_id, collection_id) VALUES ('1', '12');
INSERT INTO trackcollection(track_id, collection_id) VALUES ('2', '11');
INSERT INTO trackcollection(track_id, collection_id) VALUES ('3', '2');
INSERT INTO trackcollection(track_id, collection_id) VALUES ('3', '11');
INSERT INTO trackcollection(track_id, collection_id) VALUES ('4', '2');
INSERT INTO trackcollection(track_id, collection_id) VALUES ('4', '11');
INSERT INTO trackcollection(track_id, collection_id) VALUES ('4', '1');
INSERT INTO trackcollection(track_id, collection_id) VALUES ('5', '2');
INSERT INTO trackcollection(track_id, collection_id) VALUES ('5', '4');
INSERT INTO trackcollection(track_id, collection_id) VALUES ('6', '12');
INSERT INTO trackcollection(track_id, collection_id) VALUES ('7', '4');
INSERT INTO trackcollection(track_id, collection_id) VALUES ('7', '12');
INSERT INTO trackcollection(track_id, collection_id) VALUES ('8', '4');
INSERT INTO trackcollection(track_id, collection_id) VALUES ('8', '12');