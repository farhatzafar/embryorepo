-- For products table
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    for_winter BOOLEAN DEFAULT FALSE,
    for_sun BOOLEAN DEFAULT FALSE,
    anti_age BOOLEAN DEFAULT FALSE,
    image_url TEXT
);

-- Insert the provided product data
INSERT INTO products (id, name, description, for_winter, for_sun, anti_age, image_url)
VALUES
(1, 'Lait-Crème Concentré', 'The “must-have” 6-in-1 multi-function nourishing moisturizer', TRUE, TRUE, FALSE, 'https://us.embryolisse.com/cdn/shop/products/EB202000_01.jpg?v=1718222285&width=1200'),
(2, 'Hydra Cream Energizing', 'A Vitamin-Infused Powerhouse for Radiant Skin', TRUE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/files/Hydra-Cream-Energizing-website2.jpg?v=1718140325&width=1200'),
(3, 'Hydra Serum', 'Active hydration for radiantly beautiful skin.', TRUE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/products/EB273000_01_b716e845-d2a9-4f2c-a9d2-ca6134378372.jpg?v=1685993543&width=1200'),
(4, '3-in-1 Paste', 'The ultimate in anti‑blemish skincare', FALSE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/files/3in1-secret-paste-embryolisse.jpg?v=1736159390&width=1200'),
(5, 'Cicalisse Hands and Nails', 'Nourishing repair cream with Shea Butter', TRUE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/files/new-cicalisse-hands-nails.jpg?v=1726167316&width=1200'),
(6, 'Filaderme Emulsion', 'This cream changes the life of dry and sensitive skin', TRUE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/products/EB305000_01_e509f3dc-801a-4dff-a481-9fc100e10430.jpg?v=1696974881&width=1200'),
(7, 'Exfoliating Milk Powder', 'The best of the coconut in a water-free powder', FALSE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/files/EB506000_03_f8acb2f6-7804-4e71-b11e-1bdb1e795a19.jpg?v=1736159860&width=600'),
(8, 'Foaming Cream Milk', 'The Foaming Cream-Milk has a rich and creamy nourishing texture', FALSE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/products/EB227000_01_b658107f-98f4-4910-864e-a3d74642bfc9.jpg?v=1685993500&width=1200'),
(9, 'Active Night Peeling', 'Gentle care with Lemon Caviar', FALSE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/products/EB108000_01_63b73009-827b-4240-9a8d-ea31555251a5.jpg?v=1689112065&width=1200'),
(10, 'Anti-Age Comfort Mark', 'This mask envelops the skin in a cocoon of softness, leaving a sensation of infinite well-being', FALSE, FALSE, TRUE, 'https://us.embryolisse.com/cdn/shop/products/EB104000_01_bfc5d228-ed63-420e-b79e-aa8c9dadd19f.jpg?v=1685993510&width=1200'),
(11, 'Firming-Lifting Cream', 'This velvety cream enriched in organic kangaroo paw flower plumps the skin daily for continuous correction of wrinkles and firmness', FALSE, FALSE, TRUE, 'https://us.embryolisse.com/cdn/shop/products/EB109000_01_8ee45d32-71b2-45e9-9c75-4055a0d19206.jpg?v=1689112565&width=1200'),
(12, 'Beauty Oil', 'Enriched with active plant oils, this dry oil protects and beautifies skin and hair', FALSE, FALSE, TRUE, 'https://us.embryolisse.com/cdn/shop/products/EB279000_01.jpg?v=1685612713&width=1200'),
(13, 'Lait-Crème Fluid+', 'Enhance your beauty routine with the New Lait-Crème Fluid+, where natural care meets exceptional performance', TRUE, TRUE, FALSE, 'https://us.embryolisse.com/cdn/shop/files/EB293000-Lait-Creme-Fluid_NEW_8548cdf0-d704-4cdf-9e04-106453105827.jpg?v=1710532579&width=1000'),
(14, 'Lait-Crème Sensitive', '7-in-1 multi-functional hydrating and nourishing moisturizer', TRUE, TRUE, FALSE, 'https://us.embryolisse.com/cdn/shop/products/EB203000_01_32033547-8a63-45e7-8b33-a10b4a6e62f1.jpg?v=1685993556&width=1200'),
(15, 'Lait-Crème Retinol-Like', 'A skincare innovation with French Big Clover extract', TRUE, FALSE, TRUE, 'https://us.embryolisse.com/cdn/shop/files/LCR.jpg?v=1730129261&width=1200'),
(16, 'Winter Dry Skin Essentials', 'The Winter Dry Skin Essentials curated routine offers the ultimate solution for parched skin, providing hydration and relief for your face, lips, and hands', TRUE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/files/winter-routine.jpg?v=1728063014&width=1200'),
(17, 'Hydra Cream Light', 'Enriched in white nymphaea and a hyaluronic acid active complex, the Hydra-Cream Light replenishes the skin with water and delivers intense, long-lasting hydration', TRUE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/products/EB272000_01_f3e06faa-942a-4d0f-bc02-6dce4075cb35.jpg?v=1685993546&width=1200'),
(18, 'Smooth Active Cream', 'The Smooth-Active Cream is the ideal care for women with a busy lifestyle', FALSE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/products/EB603000_01_34616497-bcd5-45d5-b3c3-77c818664271.jpg?v=1685993582&width=1200'),
(19, 'Anti-Blemish Serum', 'The Anti-Blemish Serum is a powerful treatment that targets and diminishes 6 different types of skin imperfections: acne, redness, breakouts, blackheads, blemishes, and excess oil.', FALSE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/files/anti-blemish-serum-embryolisse-new-1200x1200_99d8409b-ea9f-4965-86a8-6954a8bd7f96.jpg?v=1736159527&width=1200'),
(20, 'Mattifying Moisturizer', 'Formulated with 98% natural ingredients, vegetable glycerin-enriched Mattifying Moisturizer is perfectly suited as a day—or night-time treatment after the Anti-Blemish Serum', FALSE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/files/mattifying-moisturizer-embryolisse.jpg?v=1736159660&width=1200'),
(21, 'Intense Moisturizing Mask', 'This gel mask, enriched with white nymphaea and hyaluronic acid, instantly replenishes the water reserves of even the thirstiest skin', TRUE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/products/EB290000_01_2016e882-bf0e-4ac1-8127-d097e1c4a891.jpg?v=1685993593&width=1200'),
(22, 'Protective & Nourishing Lip Balm', 'Moisturizes and nourishes, protects and soothes dry and damaged lips with active ingredients of natural origin', TRUE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/files/nourishing-lip-stick-embryolisse.webp?v=1734540558&width=700'),
(23, 'Cicalisse', 'Cicalisse Cream calms and restores the skin’s barrier function while moisturizing the damaged and weakened epidermis', TRUE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/products/EB303000_01_6ced751a-ae1a-4d13-9ac7-ef28f745374b.jpg?v=1689112053&width=1200'),
(24, 'Eau de Beaute Rosamelis', 'A refreshing toner, comprised of 4 organic beneficial floral waters, that can be used as a toner, a refreshing mist or a make-up fixing mist', FALSE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/products/EB501000_01_8e9423ca-c32b-4769-8d75-e5d9e9635f02.jpg?v=1689112400&width=1200'),
(25, 'Gentle Waterproof Make-up Remover Milk', 'This 4-in-1 milk cleanses, removes makeup, moisturizes, and soothes all skin types, even sensitive ones', FALSE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/products/EB504000_01_1dd480cb-005f-4d35-bf3c-835c98b7de11.jpg?v=1689112649&width=1200'),
(26, 'Micellar Lotion', 'A gentle and efficient micellar water that cleanses and removes makeup from the face, eyes, and lips', FALSE, FALSE, FALSE, 'https://us.embryolisse.com/cdn/shop/products/EB229000_01_94a77d4a-4be1-4dc0-8743-72bc1c56134f.jpg?v=1685993494&width=1200'),
(27, 'Smoothing Eye Contour Care', 'Genuine smoothing eye care, it acts simultaneously on dark circles, under-eye bags and fine lines for a rested, more youthful appearance after 28 days', FALSE, FALSE, TRUE, 'https://us.embryolisse.com/cdn/shop/products/EB106000_01_f74dd536-42f8-40e4-a28e-c890e27b032f.jpg?v=1696975029&width=1200');
