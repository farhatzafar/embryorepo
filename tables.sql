 CREATE TABLE users (
     id SERIAL PRIMARY KEY,
     name VARCHAR(100) NOT NULL,
     age INT
 );

 CREATE TABLE products (
     id SERIAL PRIMARY KEY,
     name VARCHAR(100) NOT NULL,
     description TEXT,
     image_url TEXT
 );

 -- // For question: How would you describe your skin type?
 CREATE TABLE skin_types (
     id SERIAL PRIMARY KEY,
     name VARCHAR(50) NOT NULL
 );

 INSERT INTO skin_types (name) VALUES
 ('Oily'),
 ('Dry'),
 ('Combination'),
 ('Normal'),
 ('Sensitive');
 -- // To combine the product with all the skin types it is used for
 CREATE TABLE product_skin_types (
     product_id INT REFERENCES products(id) ON DELETE CASCADE,
     skin_type_id INT REFERENCES skin_types(id) ON DELETE CASCADE,
     PRIMARY KEY (product_id, skin_type_id)
 );

 -- // For question: How often do you experience breakouts?
 CREATE TABLE breakouts (
     id SERIAL PRIMARY KEY,
     name VARCHAR(50) NOT NULL
 );

 INSERT INTO breakouts (name) VALUES
 ('Never'),
 ('Rarely'),
 ('Sometimes'),
 ('Frequently');

 -- // To combine products with whether they are used to treat acne
 CREATE TABLE product_breakouts (
     product_id INT REFERENCES products(id) ON DELETE CASCADE,
     breakout_id INT REFERENCES breakouts(id) ON DELETE CASCADE,
     PRIMARY KEY (product_id, breakout_id)
 );

 -- // For question: What is your top skin concern?
 CREATE TABLE concerns (
     id SERIAL PRIMARY KEY,
     name VARCHAR(100) NOT NULL
 );

 INSERT INTO concerns (name) VALUES
 ('Acne'),
 ('Dark spots'),
 ('Redness'),
 ('Wrinkles'),
 ('Fine lines'),
 ('Dryness'),
 ('Oiliness'),
 ('Large pores'),
 ('Uneven texture');

 -- // To combine products with the skin concerns they treat
 CREATE TABLE product_concerns (
     product_id INT REFERENCES products(id) ON DELETE CASCADE,
     concern_id INT REFERENCES concerns(id) ON DELETE CASCADE,
     PRIMARY KEY (product_id, concern_id)
 );

 -- For question: What areas would you like to target with our products?
 CREATE TABLE target_areas (
     id SERIAL PRIMARY KEY,
     name VARCHAR(50) NOT NULL
 );

 INSERT INTO target_areas (name) VALUES
 ('Hands'),
 ('Body'),
 ('Face'),
 ('Lips'),
 ('Eyes');

 -- // To combine products with the areas they target
 CREATE TABLE product_target_areas (
     product_id INT REFERENCES products(id) ON DELETE CASCADE,
     target_area_id INT REFERENCES target_areas(id) ON DELETE CASCADE,
     PRIMARY KEY (product_id, target_area_id)
 );
 -- // To save user responses
 CREATE TABLE user_responses (
     id SERIAL PRIMARY KEY,
     user_id INT REFERENCES users(id) ON DELETE CASCADE,
     skin_type_id INT REFERENCES skin_types(id) ON DELETE SET NULL,
     breakout_id INT REFERENCES breakouts(id) ON DELETE SET NULL,
     concern_id INT REFERENCES concerns(id) ON DELETE SET NULL,
     target_area_id INT REFERENCES target_areas(id) ON DELETE SET NULL,
     dry_in_winter BOOLEAN,
     spends_time_in_sun BOOLEAN
 );

 INSERT INTO products (id, name, description, image_url) VALUES
 (1, 'Lait-Crème Concentré', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB202000_01.jpg?v=1718222285&width=1200'),
 (2, 'Hydra Cream Energizing', 'temp', 'https://us.embryolisse.com/cdn/shop/files/Hydra-Cream-Energizing-website2.jpg?v=1718140325&width=1200'),
 (3, 'Hydra Serum', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB273000_01_b716e845-d2a9-4f2c-a9d2-ca6134378372.jpg?v=1685993543&width=1200'),
 (4, '3-in-1 Paste', 'temp', 'https://us.embryolisse.com/cdn/shop/files/3in1-secret-paste-embryolisse.jpg?v=1736159390&width=1200'),
 (5, 'Cicalisse Hands and Nails', 'temp', 'https://us.embryolisse.com/cdn/shop/files/new-cicalisse-hands-nails.jpg?v=1726167316&width=1200'),
 (6, 'Filaderme Emulsion', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB305000_01_e509f3dc-801a-4dff-a481-9fc100e10430.jpg?v=1696974881&width=1200'),
 (7, 'Exfoliating Milk Powder', 'temp', 'https://us.embryolisse.com/cdn/shop/files/EB506000_03_f8acb2f6-7804-4e71-b11e-1bdb1e795a19.jpg?v=1736159860&width=600'),
 (8, 'Foaming Cream Milk', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB227000_01_b658107f-98f4-4910-864e-a3d74642bfc9.jpg?v=1685993500&width=1200'),
 (9, 'Active Night Peeling', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB108000_01_63b73009-827b-4240-9a8d-ea31555251a5.jpg?v=1689112065&width=1200'),
 (10, 'Anti-Age Comfort Mark', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB104000_01_bfc5d228-ed63-420e-b79e-aa8c9dadd19f.jpg?v=1685993510&width=1200'),
 (11, 'Firming-Lifting Cream', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB109000_01_8ee45d32-71b2-45e9-9c75-4055a0d19206.jpg?v=1689112565&width=1200'),
 (12, 'Beauty Oil', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB279000_01.jpg?v=1685612713&width=1200'),
 (13, 'Lait-Crème Fluid+', 'temp', 'https://us.embryolisse.com/cdn/shop/files/EB293000-Lait-Creme-Fluid_NEW_8548cdf0-d704-4cdf-9e04-106453105827.jpg?v=1710532579&width=1000'),
 (14, 'Lait-Crème Sensitive', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB203000_01_32033547-8a63-45e7-8b33-a10b4a6e62f1.jpg?v=1685993556&width=1200'),
 (15, 'Lait-Crème Retinol-Like', 'temp', 'https://us.embryolisse.com/cdn/shop/files/LCR.jpg?v=1730129261&width=1200'),
 (16, 'Winter Dry Skin Essentials', 'temp', 'https://us.embryolisse.com/cdn/shop/files/winter-routine.jpg?v=1728063014&width=1200'),
 (17, 'Hydra Cream Light', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB272000_01_f3e06faa-942a-4d0f-bc02-6dce4075cb35.jpg?v=1685993546&width=1200'),
 (18, 'Smooth Active Cream', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB603000_01_34616497-bcd5-45d5-b3c3-77c818664271.jpg?v=1685993582&width=1200'),
 (19, 'Anti-Blemish Serum', 'temp', 'https://us.embryolisse.com/cdn/shop/files/anti-blemish-serum-embryolisse-new-1200x1200_99d8409b-ea9f-4965-86a8-6954a8bd7f96.jpg?v=1736159527&width=1200'),
 (20, 'Mattifying Moisturizer', 'temp', 'https://us.embryolisse.com/cdn/shop/files/mattifying-moisturizer-embryolisse.jpg?v=1736159660&width=1200'),
 (21, 'Intense Moisturizing Mask', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB290000_01_2016e882-bf0e-4ac1-8127-d097e1c4a891.jpg?v=1685993593&width=1200'),
 (22, 'Protective & Nourishing Lip Balm', 'temp', 'https://us.embryolisse.com/cdn/shop/files/nourishing-lip-stick-embryolisse.webp?v=1734540558&width=700'),
 (23, 'Cicalisse', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB303000_01_6ced751a-ae1a-4d13-9ac7-ef28f745374b.jpg?v=1689112053&width=1200'),
 (24, 'Eau de Beaute Rosamelis', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB501000_01_8e9423ca-c32b-4769-8d75-e5d9e9635f02.jpg?v=1689112400&width=1200'),
 (25, 'Gentle Waterproof Make-up Remover Milk', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB504000_01_1dd480cb-005f-4d35-bf3c-835c98b7de11.jpg?v=1689112649&width=1200'),
 (26, 'Micellar Lotion', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB229000_01_94a77d4a-4be1-4dc0-8743-72bc1c56134f.jpg?v=1685993494&width=1200'),
 (27, 'Smoothing Eye Contour Care', 'temp', 'https://us.embryolisse.com/cdn/shop/products/EB106000_01_f74dd536-42f8-40e4-a28e-c890e27b032f.jpg?v=1696975029&width=1200');

select * from skin_types;