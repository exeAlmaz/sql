
--Количество исполнителей в каждом жанре


select name, count(p.alias) from genres g
left join perfomersgenres pg on g.id = pg.genres_id
left join perfomers p on p.id = pg.perfomres_id
group by name
order by count(p.alias);


--Количество треков, вошедших в альбомы 2019–2020 годов.

select count(t.albums_id) from tracks t
left join albums a on t.albums_id = a.id
where a.year >= '2019-01-01' and a.year <= '2020-12-12';


--Средняя продолжительность треков по каждому альбому.

select a.name, avg(duration) from tracks t
left join albums a on a.id = t.albums_id
group by a.name
order by avg(duration);

--Все исполнители, которые не выпустили альбомы в 2020 году.

select alias from perfomers p
left join perfomersalbums pa on pa.perfomers_id = p.id
left join albums a on a.id = pa.albums_id
where alias not in (select alias from perfomersalbums where a.year >= '2020-01-01' and a.year < '2021-01-01');


--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами). 

select c.name from collection c
left join trackcollection tc on tc.collection_id = c.id
left join tracks t on t.id = tc.track_id
left join albums a on a.id = t.albums_id
left join perfomersalbums pa on pa.albums_id = a.id
left join perfomers p on p.id = pa.perfomers_id
where alias like 'Руки%';