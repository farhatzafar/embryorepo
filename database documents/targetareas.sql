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

-- To combine products with the areas they target
CREATE TABLE product_target_areas (
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    target_area_id INT REFERENCES target_areas(id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, target_area_id)
);

-- Insert values into product_target_areas
INSERT INTO product_target_areas (product_id, target_area_id)
VALUES
-- Product 1: face (3), body (2)
(1, 3), (1, 2),

-- Product 2: face (3), body (2)
(2, 3), (2, 2),

-- Product 3: face (3), body (2)
(3, 3), (3, 2),

-- Product 4: face (3)
(4, 3),

-- Product 5: hands (1)
(5, 1),

-- Product 6: face (3)
(6, 3),

-- Product 7: face (3)
(7, 3),

-- Product 8: face (3), body (2)
(8, 3), (8, 2),

-- Product 9: face (3), body (2)
(9, 3), (9, 2),

-- Product 10: face (3)
(10, 3),

-- Product 11: face (3)
(11, 3),

-- Product 12: face (3), body (2)
(12, 3), (12, 2),

-- Product 13: face (3), body (2)
(13, 3), (13, 2),

-- Product 14: face (3), body (2)
(14, 3), (14, 2),

-- Product 15: face (3), body (2)
(15, 3), (15, 2),

-- Product 16: face (3), lips (4), hands (1)
(16, 3), (16, 4), (16, 1),

-- Product 17: face (3), body (2)
(17, 3), (17, 2),

-- Product 18: face (3)
(18, 3),

-- Product 19: face (3), body (2)
(19, 3), (19, 2),

-- Product 20: face (3)
(20, 3),

-- Product 21: face (3)
(21, 3),

-- Product 22: lips (4)
(22, 4),

-- Product 23: face (3), body (2), lips (4)
(23, 3), (23, 2), (23, 4),

-- Product 24: face (3)
(24, 3),

-- Product 25: face (3), eyes (5), lips (4)
(25, 3), (25, 5), (25, 4),

-- Product 26: face (3), eyes (5), lips (4)
(26, 3), (26, 5), (26, 4),

-- Product 27: eyes (5)
(27, 5);
