CREATE TABLE Usuarios (
  id INT PRIMARY KEY,
  first_name VARCHAR(45),
  last_name VARCHAR(45),
  email VARCHAR(45),
  created_ad DATETIME,
  updated_ad DATETIME
);

INSERT INTO Usuarios (id, first_name, last_name, email, created_ad, updated_ad)
VALUES 
  (1, 'Juan', 'Perez', 'juan@example.com', NOW(), NOW()),
  (2, 'Maria', 'Gomez', 'maria@example.com', NOW(), NOW()),
  (3, 'Pedro', 'Rodriguez', 'pedro@example.com', NOW(), NOW());

SELECT * FROM Usuarios;
SELECT * FROM Usuarios WHERE email = 'juan@example.com' LIMIT 1;
SELECT * FROM Usuarios WHERE id = (SELECT MAX(id) FROM Usuarios);
UPDATE Usuarios SET last_name = 'Panqueques' WHERE id = 3;
DELETE FROM Usuarios WHERE id = 2;
SELECT * FROM Usuarios ORDER BY first_name;
SELECT * FROM Usuarios ORDER BY first_name DESC;
