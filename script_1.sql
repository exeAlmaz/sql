

pip install psycopg2-bynary 
//(после создаем бд, createdb -U postgres exe_db)


import psycopg2


//создать таблицу
def create_table(conn)
	with conn.cursos() as cur:
		cur.execute("""
		CREATE TABLE IF NOT EXISTS client_info(
		id SERIAL PRIMARY KEY,
		firstname varchar(60) not null unique,
		lastname varchar(60) not null unique,
		email varchar(80) not null unique,
		);
		""")


		cur.execute("""
		CREATE TABLE IF NOT EXISTS client_phone(
		id serial primary key,
		id_client integer references client_info(id),
		phone varchar(12)
		);
		""")
	
	conn.close()

//добавить клиента
def add_client(conn, firstname,lastname, email, phone = None):
	with conn.cursor() as cur:
		cur.execute("""
		INSERT INTO client_info(firstname, lastname, email)
		VALUES (%s, %s, %s)
		RETURNING firstname, lastname, email;
	
	""",(firstname, lastname, email))
	return cur.fetchone()
	
def add_number(conn, id_client, phone):
	with conn.cursor() as cur:
		cur.execute("""
		INSERT INTO client_phone(id_client, phone)
		VALUES (%s,%s)
		RETURNING id_client, phone;
		
		
		
		""",(id_client, phone))


if __name__== '__main__':
	with psycopg2.connect(database="exe_db", user="postgres", password="postgres") as conn:
		
		
		
		https://github.com/Yahmice/Project-1/blob/main/CRUD.py