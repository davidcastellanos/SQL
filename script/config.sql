USE proyecto_usuarios
-- INSERT
INSERT INTO Usuarios (ID, Nombre, Email) VALUES (1, 'Juan Perez', 'juan@example.com');
-- SELECT
SELECT * FROM Usuarios;
-- UPDATE
UPDATE Usuarios SET Email = 'juanperez@example.com' WHERE ID = 1;
-- DELETE
DELETE FROM Usuarios WHERE ID = 1;
