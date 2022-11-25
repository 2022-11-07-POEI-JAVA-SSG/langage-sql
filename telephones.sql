CREATE TABLE IF NOT EXISTS telephones(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL UNIQUE,
    manufacturer VARCHAR(20) NOT NULL,
    price INTEGER NOT NULL CHECK(price>0),
    units_sold INTEGER NOT NULL CHECK(units_sold>=0)
);

-- INSERT INTO telephones(name,manufacturer,price,units_sold)
-- VALUES('Iphone 14','Apple',1700,200);
-- INSERT INTO telephones(name,manufacturer,price,units_sold)
-- VALUES
--     ('N1280','Nokia',199,1925),
--     ('Iphone 4','Apple',399,9436),
--     ('Galaxy S 5','Samsung',299,2359),
--     ('S5620 Monte','Samsung',250,2385),
--     ('N8','Nokia',150,7543),
--     ('Droid','Motorola',150,8395),
--     ('Iphone 13 Pro Max','Apple',1300,12849),
--     ('Galaxy Note 20','Samsung',1100,10353),
--     ('Redmi Note 8','Xiaomi',600,12345),
--     ('Honor 20','Huawei',230,3432),
--     ('Mate 20','Huawei',800,38893),
--     ('Lumia','Nokia',210,4342);

-- SELECT * FROM telephones;
-- Rendre les string en minuscule avant la comparaison
SELECT * FROM telephones  WHERE LOWER(manufacturer) IN(LOWER('apple'),LOWER('samsung'));
SELECT * FROM telephones  WHERE LOWER(manufacturer)=LOWER('apple') OR LOWER(manufacturer)=LOWER('samsung');
