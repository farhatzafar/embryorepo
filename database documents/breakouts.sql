
CREATE TABLE breakouts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO breakouts (name) VALUES
('Never'),
('Rarely'),
('Sometimes'),
('Frequently');

-- To combine products with whether they are used to treat acne
CREATE TABLE product_breakouts (
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    breakout_id INT REFERENCES breakouts(id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, breakout_id)
);

-- Insert values into product_breakouts
INSERT INTO product_breakouts (product_id, breakout_id)
VALUES
-- Product 1: never (1), rarely (2)
(1, 1), (1, 2),

-- Product 2: never (1), rarely (2)
(2, 1), (2, 2),

-- Product 3: never (1), rarely (2)
(3, 1), (3, 2),

-- Product 4: sometimes (3), frequently (4)
(4, 3), (4, 4),

-- Product 5: never (1), rarely (2)
(5, 1), (5, 2),

-- Product 6: never (1), rarely (2)
(6, 1), (6, 2),

-- Product 7: never (1), rarely (2)
(7, 1), (7, 2),

-- Product 8: never (1), rarely (2)
(8, 1), (8, 2),

-- Product 9: never (1), rarely (2)
(9, 1), (9, 2),

-- Product 10: never (1), rarely (2)
(10, 1), (10, 2),

-- Product 11: never (1), rarely (2)
(11, 1), (11, 2),

-- Product 12: never (1), rarely (2)
(12, 1), (12, 2),

-- Product 13: never (1), rarely (2)
(13, 1), (13, 2),

-- Product 14: never (1), rarely (2)
(14, 1), (14, 2),

-- Product 15: never (1), rarely (2)
(15, 1), (15, 2),

-- Product 16: never (1), rarely (2)
(16, 1), (16, 2),

-- Product 17: never (1), rarely (2)
(17, 1), (17, 2),

-- Product 18: never (1), rarely (2)
(18, 1), (18, 2),

-- Product 19: sometimes (3), frequently (4)
(19, 3), (19, 4),

-- Product 20: sometimes (3), frequently (4)
(20, 3), (20, 4),

-- Product 21: never (1), rarely (2)
(21, 1), (21, 2),

-- Product 22: never (1), rarely (2)
(22, 1), (22, 2),

-- Product 23: never (1), rarely (2)
(23, 1), (23, 2),

-- Product 24: never (1), rarely (2)
(24, 1), (24, 2),

-- Product 25: never (1), rarely (2)
(25, 1), (25, 2),

-- Product 26: never (1), rarely (2)
(26, 1), (26, 2),

-- Product 27: never (1), rarely (2)
(27, 1), (27, 2);
