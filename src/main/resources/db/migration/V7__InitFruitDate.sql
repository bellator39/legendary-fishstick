INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    821, 120, 0, 5, 1, 13, '2023-11-23', 'Свежий и вкусный банан, идеально подходит для смузи и десертов.', 'Банан', 'https://images.unsplash.com/photo-1603833665858-e61d17a86224?q=80&w=2127&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 821);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    822, 150, 0, 4, 2, 13, '2023-11-23', 'Сладкая и сочная клубника, идеальна для приготовления десертов.', 'Клубника', 'https://images.unsplash.com/photo-1588165171080-c89acfa5ee83?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 822);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    823, 100, 0, 2, 0.5, 13, '2023-11-23', 'Ароматный апельсин, подходит для приготовления сока.', 'Апельсин', 'https://images.unsplash.com/photo-1580052614034-c55d20bfee3b?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 823);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    824, 80, 0, 3, 0.7, 13, '2023-11-23', 'Сладкий и ароматный манго, идеально подходит для экзотических блюд.', 'Манго', 'https://images.unsplash.com/photo-1605027990121-cbae9e0642df?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 824);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    826, 110, 0, 3, 1.8, 13, '2023-11-23', 'Сладкий и сочный ананас, отличный вариант для свежих салатов.', 'Ананас', 'https://images.unsplash.com/photo-1589820296156-2454bb8a6ad1?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 826);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    827, 95, 0, 22, 2.5, 13, '2023-11-23', 'Сочные груши, подходят для приготовления компотов и десертов.', 'Груша', 'https://plus.unsplash.com/premium_photo-1669905375079-5d7e074fc123?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 827);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    828, 105, 0, 30, 2, 13, '2023-11-23', 'Сладкий и ароматный киви, добавит свежести вашему салату.', 'Киви', 'https://images.unsplash.com/photo-1585059895524-72359e06133a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 828);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    829, 88, 0, 17, 1.5, 13, '2023-11-23', 'Свежие ягоды малины, отлично подходят для приготовления десертов.', 'Малина', 'https://images.unsplash.com/photo-1577069861033-55d04cec4ef5?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 829);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    830, 120, 0, 28, 2.2, 13, '2023-11-23', 'Сладкие и спелые персики, отлично подходят для приготовления десертов.', 'Персик', 'https://images.unsplash.com/photo-1570978561297-793391262fea?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 830);