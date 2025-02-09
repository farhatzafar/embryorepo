-- For question: How would you describe your skin type?
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

-- To combine the product with all the skin types it is used for

CREATE TABLE product_skin_types (
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    skin_type_id INT REFERENCES skin_types(id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, skin_type_id)
);


-- Insert values into product_skin_types
INSERT INTO product_skin_types (product_id, skin_type_id)
VALUES
-- Product 1: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(1, 2), (1, 1), (1, 5), (1, 4), (1, 3),

-- Product 2: dry (2), normal (4), sensitive (5)
(2, 2), (2, 4), (2, 5),

-- Product 3: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(3, 2), (3, 1), (3, 5), (3, 4), (3, 3),

-- Product 4: oily (1), combination (3)
(4, 1), (4, 3),

-- Product 5: dry (2)
(5, 2),

-- Product 6: dry (2), sensitive (5)
(6, 2), (6, 5),

-- Product 7: normal (4)
(7, 4),

-- Product 8: normal (4)
(8, 4),

-- Product 9: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(9, 2), (9, 1), (9, 5), (9, 4), (9, 3),

-- Product 10: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(10, 2), (10, 1), (10, 5), (10, 4), (10, 3),

-- Product 11: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(11, 2), (11, 1), (11, 5), (11, 4), (11, 3),

-- Product 12: dry (2), normal (4)
(12, 2), (12, 4),

-- Product 13: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(13, 2), (13, 1), (13, 5), (13, 4), (13, 3),

-- Product 14: sensitive (5)
(14, 5),

-- Product 15: dry (2), sensitive (5)
(15, 2), (15, 5),

-- Product 16: dry (2)
(16, 2),

-- Product 17: normal (4), combination (3)
(17, 4), (17, 3),

-- Product 18: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(18, 2), (18, 1), (18, 5), (18, 4), (18, 3),

-- Product 19: combination (3), oily (1)
(19, 3), (19, 1),

-- Product 20: combination (3), oily (1)
(20, 3), (20, 1),

-- Product 21: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(21, 2), (21, 1), (21, 5), (21, 4), (21, 3),

-- Product 22: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(22, 2), (22, 1), (22, 5), (22, 4), (22, 3),

-- Product 23: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(23, 2), (23, 1), (23, 5), (23, 4), (23, 3),

-- Product 24: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(24, 2), (24, 1), (24, 5), (24, 4), (24, 3),

-- Product 25: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(25, 2), (25, 1), (25, 5), (25, 4), (25, 3),

-- Product 26: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(26, 2), (26, 1), (26, 5), (26, 4), (26, 3),

-- Product 27: dry (2), oily (1), sensitive (5), normal (4), combination (3)
(27, 2), (27, 1), (27, 5), (27, 4), (27, 3);
