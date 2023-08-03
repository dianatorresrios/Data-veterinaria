/*CREAR  TABLA OWNERS*/

CREATE TABLE owners (
owner_id SERIAL PRIMARY KEY,
first_name VARCHAR(150) NOT NULL,
last_name VARCHAR(150) NOT NULL,
email VARCHAR(150) UNIQUE NOT NULL,
phone VARCHAR(15) NOT NULL
	);
	
	CREATE TABLE owners (
owner_id SERIAL PRIMARY KEY,
first_name VARCHAR(150) NOT NULL,
last_name VARCHAR(150) NOT NULL,
email VARCHAR(150) UNIQUE NOT NULL,
phone VARCHAR(15) NOT NULL
	);
	/*CREAR TABLE PETS*/
	
	CREATE TABLE pets (
pet_id SERIAL PRIMARY KEY,
name VARCHAR(150) NOT NULL,
type VARCHAR(150) NOT NULL,
breed VARCHAR(150) NOT NULL,
age INT NOT NULL,
owner_id INT NOT NULL,
FOREIGN KEY (owner_id) REFERENCES
owners(owner_id)
		);
		
		
	CREATE TABLE pets (
pet_id SERIAL PRIMARY KEY,
name VARCHAR(150) NOT NULL,
type VARCHAR(150) NOT NULL,
breed VARCHAR(150) NOT NULL,
age INT NOT NULL,
owner_id INT NOT NULL,
FOREIGN KEY (owner_id) REFERENCES
owners(owner_id)
		);
	/*CREAR  TABLA  VETERINARIOS*/	
	CREATE TABLE veterinarians (
veterinarian_id SERIAL PRIMARY KEY,
first_name VARCHAR(150) NOT NULL,
last_name VARCHAR(150) NOT NULL,
email VARCHAR(150) UNIQUE NOT NULL,
phone VARCHAR(15) NOT NULL,
licence VARCHAR(10) UNIQUE NOT NULL,
years_experience INT
			);
			/*CREAR  TABLA  ATENDES*/
			
		CREATE TABLE attends (
pet_id int NOT NULL,
veterinarian_id int NOT NULL,
FOREIGN KEY(pet_id) REFERENCES 
pets(pet_id),
FOREIGN KEY(veterinarian_id) REFERENCES 
veterinarians(veterinarian_id),
PRIMARY KEY(pet_id, veterinarian_id) 
/* Composite Primary Key */
);

/*INSERT OWERS*/

		INSERT INTO owners 
VALUES (2,'César','Guerra','cesar@correo.com','5553334444')


		