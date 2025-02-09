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
('Uneven texture');

-- To combine products with the skin concerns they treat
CREATE TABLE product_concerns (
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    concern_id INT REFERENCES concerns(id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, concern_id)
);

-- Insert values into product_concerns
INSERT INTO product_concerns (product_id, concern_id)
VALUES
-- Product 1: redness (3), dryness (6), oiliness (7)
(1, 3), (1, 6), (1, 7),

-- Product 2: dark spots (2), dryness (6), uneven texture (8)
(2, 2), (2, 6), (2, 8),

-- Product 3: dryness (6)
(3, 6),

-- Product 4: acne (1), oiliness (7), redness (3)
(4, 1), (4, 7), (4, 3),

-- Product 5: dryness (6)
(5, 6),

-- Product 6: dryness (6)
(6, 6),

-- Product 7: oiliness (7)
(7, 7),

-- Product 8: oiliness (7)
(8, 7),

-- Product 9: dark spots (2), uneven texture (8)
(9, 2), (9, 8),

-- Product 10: fine lines (5), wrinkles (4)
(10, 5), (10, 4),

-- Product 11: fine lines (5), wrinkles (4)
(11, 5), (11, 4),

-- Product 12: dryness (6), uneven texture (8)
(12, 6), (12, 8),

-- Product 13: redness (3), dryness (6), oiliness (7)
(13, 3), (13, 6), (13, 7),

-- Product 14: redness (3), dryness (6), oiliness (7)
(14, 3), (14, 6), (14, 7),

-- Product 15: fine lines (5), wrinkles (4), dryness (6)
(15, 5), (15, 4), (15, 6),

-- Product 16: dryness (6)
(16, 6),

-- Product 17: dryness (6)
(17, 6),

-- Product 18: dryness (6), redness (3)
(18, 6), (18, 3),

-- Product 19: acne (1), oiliness (7), redness (3)
(19, 1), (19, 7), (19, 3),

-- Product 20: acne (1), oiliness (7), uneven texture (8)
(20, 1), (20, 7), (20, 8),

-- Product 21: dryness (6)
(21, 6),

-- Product 22: dryness (6)
(22, 6),

-- Product 23: dryness (6)
(23, 6),

-- Product 24: uneven texture (8)
(24, 8),

-- Product 25: oiliness (7)
(25, 7),

-- Product 26: oiliness (7)
(26, 7),

-- Product 27: fine lines (5), wrinkles (4)
(27, 5), (27, 4);




