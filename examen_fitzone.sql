CREATE TABLE socios(
	id_socio INT PRIMARY KEY,
	nombres VARCHAR(50) NOT NULL,
	apellidos VARCHAR(50) NOT NULL, 
	edad INT NOT NULL, 
	fecha_registro VARCHAR(10) NOT NULL, 
	activo boolean NOT NULL
);
SELECT * FROM socios;
INSERT INTO socios VALUES(1, 'Ana', 'Prieto', 23, '2026-05-04', true);
INSERT INTO socios VALUES(2, 'Carolina', 'Perez', 33, '2026-04-23', false);
INSERT INTO socios VALUES(3, 'Carlos', 'Tellez', 49, '2026-10-12', true);
INSERT INTO socios VALUES(4, 'Julian', 'Martinez', 15, '2026-03-11', false);
INSERT INTO socios VALUES(5, 'Alexandra', 'Ballesteros', 9, '2026-09-28', true);

SELECT nombres, apellidos, edad FROM socios WHERE activo='true' AND edad > 18;
SELECT * FROM socios WHERE fecha_registro >'2026-02-01';
SELECT * FROM socios ORDER BY edad DESC;

ALTER TABLE socios
ADD COLUMN email VARCHAR(100);

UPDATE socios SET email='alexa@movilis.ec' WHERE id_socio=5;
SELECT * FROM socios;
