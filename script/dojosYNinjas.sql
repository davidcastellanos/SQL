CREATE TABLE dojos (
  id INT PRIMARY KEY,
  name VARCHAR(45),
  created_ad DATETIME,
  updated_ad DATETIME
);

CREATE TABLE ninjas (
  id INT PRIMARY KEY,
  first_name VARCHAR(45),
  last_name VARCHAR(45),
  age INT,
  dojo_id INT,
  created_ad DATETIME,
  updated_ad DATETIME,
  FOREIGN KEY (dojo_id) REFERENCES dojos(id)
);

INSERT INTO dojos (id, name, created_ad, updated_ad) VALUES (1, 'Dojo 1', NOW(), NOW());
INSERT INTO dojos (id, name, created_ad, updated_ad) VALUES (2, 'Dojo 2', NOW(), NOW());
INSERT INTO dojos (id, name, created_ad, updated_ad) VALUES (3, 'Dojo 3', NOW(), NOW());

DELETE FROM dojos WHERE id IN (1, 2, 3);

INSERT INTO dojos (id, name, created_ad, updated_ad) VALUES (1, 'Dojo 1', NOW(), NOW());
INSERT INTO dojos (id, name, created_ad, updated_ad) VALUES (2, 'Dojo 2', NOW(), NOW());
INSERT INTO dojos (id, name, created_ad, updated_ad) VALUES (3, 'Dojo 3', NOW(), NOW());

INSERT INTO ninjas (id, first_name, last_name, age, dojo_id, created_ad, updated_ad) VALUES (1, 'Ninja 1', 'Apellido 1', 20, 4, NOW(), NOW());
INSERT INTO ninjas (id, first_name, last_name, age, dojo_id, created_ad, updated_ad) VALUES (2, 'Ninja 2', 'Apellido 2', 25, 4, NOW(), NOW());
INSERT INTO ninjas (id, first_name, last_name, age, dojo_id, created_ad, updated_ad) VALUES (3, 'Ninja 3', 'Apellido 3', 30, 4, NOW(), NOW());


INSERT INTO ninjas (id, first_name, last_name, age, dojo_id, created_ad, updated_ad) VALUES (4, 'Ninja 4', 'Apellido 4', 22, 5, NOW(), NOW());
INSERT INTO ninjas (id, first_name, last_name, age, dojo_id, created_ad, updated_ad) VALUES (5, 'Ninja 5', 'Apellido 5', 27, 5, NOW(), NOW());
INSERT INTO ninjas (id, first_name, last_name, age, dojo_id, created_ad, updated_ad) VALUES (6, 'Ninja 6', 'Apellido 6', 32, 5, NOW(), NOW());

INSERT INTO ninjas (id, first_name, last_name, age, dojo_id, created_ad, updated_ad) VALUES (7, 'Ninja 7', 'Apellido 7', 24, 6, NOW(), NOW());
INSERT INTO ninjas (id, first_name, last_name, age, dojo_id, created_ad, updated_ad) VALUES (8, 'Ninja 8', 'Apellido 8', 29, 6, NOW(), NOW());
INSERT INTO ninjas (id, first_name, last_name, age, dojo_id, created_ad, updated_ad) VALUES (9, 'Ninja 9', 'Apellido 9', 34, 6, NOW(), NOW());


SELECT * FROM ninjas WHERE dojo_id = 1;
SELECT * FROM ninjas WHERE dojo_id = (SELECT MAX(id) FROM dojos);
SELECT * FROM dojos WHERE id = (SELECT dojo_id FROM ninjas ORDER BY id DESC LIMIT 1);

