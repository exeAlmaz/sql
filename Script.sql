create table if not exists Albums(
	id serial primary key,
	name varchar(100) not null,
	year date not null

);

create table if not exists Tracks(
	id serial primary key,
	album_id int not null references Albums(id),
	name varchar(100) not null,	
	duration int not null
);

create table if not exists Perfomers(
	id serial primary key,
	alias varchar(100) not null
);

create table if not exists Genres(
	id serial primary key,
	name varchar(100) not null
);

create table if not exists PerfomersGenres(
	id serial primary key,
	genres_id INTEGER references Genres(id),
	perfomer_id integer references Perfomers(id)
); 

create table if not exists PrefomersAlbum(
	id serial primary key,
	album_id integer references Albums(id),
	perfomer_id integer references Perfomers(id)
);

create table if not exists Collection(
	id serial primary key,
	name varchar(100) not null,
	year date not null
);
create table if not exists Trackcollection(
	track_id integer references Tracks(id),
	collection_id integer references Collection(id)
	
);

