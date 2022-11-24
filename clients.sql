/*
clients
    first_name
    last_name
    email
    phone_number 
    
*/

-- Création de la table clients
CREATE TABLE IF NOT EXISTS clients(
  id SERIAL PRIMARY KEY, 
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  phone_number VARCHAR(10)
);


-- Insertion des données
-- INSERT INTO clients(first_name, last_name, email,phone_number) 
-- VALUES('christian','lisangola','christian.lisangola@gmail.com','0636363636');

-- Lister les clients
SELECT * FROM clients;

-- Insertion de plusieurs lignes
-- INSERT INTO clients(first_name, last_name, email,phone_number) 
-- VALUES
--     ('Christophe','Guéroult','c.gueroult@coderbase.io','0737373737'),
--     ('Alexandre','Le Grand','alexandre.legrand@homtail.fr','0638383838'),
--     ('Zidane','Zinedine','zizou@yahoo.fr','0674747474');

-- Limiter les colonnes à afficher
-- SELECT id,first_name, last_name FROM clients;

-- full_name            |   email
-- ----------------------------------------------------
-- lisangola christian  |  christian.lisangola@gmail.com
 
-- SELECT CONCAT(last_name,' ',first_name) AS full_name, email FROM clients;
-- SELECT CONCAT('+33',phone_number) AS numero_telephone FROM clients;
-- SELECT first_name AS prenom, last_name AS nom FROM clients;

--  On peut ne pas inserer le nom et le prenom
-- INSERT INTO clients(email,phone_number) 
--     VALUES('zozor@gmail.com','0746464646');

-- Les adresses email ne sont pas uniques
-- INSERT INTO clients(email,first_name)
-- VALUES ('zizou@yahoo.fr','Ronaldo De Lima');

-- Ajouter contrainte d'unicite
-- ALTER TABLE clients ADD UNIQUE(email);

-- Ajouter une containte de NOT NULL
ALTER TABLE clients ALTER COLUMN first_name SET NOT NULL;



