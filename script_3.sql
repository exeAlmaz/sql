--Название и продолжительность самого длительного трека.

select name, duration FROM tracks
where duration = (select max(duration) from tracks);

--Название треков, продолжительность которых не менее 3,5 минут.

select name from tracks
where duration > 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.

select name from collection
where year >= '2018-01-01' and year <= '2020-01-01';

--Исполнители, чьё имя состоит из одного слова.

select alias from perfomers
where not alias like '% %';

--Название треков, которые содержат слово «мой» или «my».

select name from tracks
where name like '%Мой%' or name like '%My%';

