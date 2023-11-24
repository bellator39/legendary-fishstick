INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    777, 120, 0, 5, 1, 13, '2023-11-23', 'Свежий и вкусный огурец, идеально подходит для салатов.', 'Огурец', 'https://images.unsplash.com/photo-1449300079323-02e209d9d3a6?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 777);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    778, 150, 0, 4, 2, 11, '2023-11-23', 'Спелый помидор с сочной мякотью, отлично подходит для соусов и салатов.', 'Помидор', 'https://images.unsplash.com/photo-1607305387299-a3d9611cd469?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 778);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    779, 100, 0, 2, 0.5, 11, '2023-11-23', 'Ароматный лук, отличный компаньон для мясных блюд и супов.', 'Лук', 'https://images.unsplash.com/photo-1587049633312-d628ae50a8ae?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 779);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    780, 80, 0, 3, 0.7, 11, '2023-11-23', 'Сладкий и сочный перец, отлично подходит для жарки и запекания.', 'Перец', 'https://images.unsplash.com/photo-1632446087108-a0034661001d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 780);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    781, 200, 0, 1.5, 0.3, 11, '2023-11-23', 'Ароматные специи для вашего блюда, добавляют неповторимый вкус.', 'Зелень', 'https://images.unsplash.com/photo-1509210459313-17feefdff5cd?q=80&w=1918&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 781);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    806, 100, 0, 6, 1.5, 11, '2023-11-23', 'Ароматные специи для вашего блюда, добавляют неповторимый вкус.', 'Зелень', 'https://images.unsplash.com/photo-1633640737481-2e9aabd87033?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 806);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    807, 300, 0, 3, 1.5, 11, '2023-11-23', 'Картофель один из лучших гарниров для ужина.', 'Картофель', 'https://images.unsplash.com/photo-1518977676601-b53f82aba655?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 807);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    808, 25, 0, 3, 0.3, 11, '2023-11-23', 'Украсит ваше блюдо свои соком.', 'Чеснок', 'https://images.unsplash.com/photo-1501420193726-1f65acd36cda?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 808);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    809, 15, 0, 3, 1.5, 11, '2023-11-23', 'Сделает ваш салат гораздо вкуснее.', 'Сельдерей', 'https://images.unsplash.com/photo-1580391564590-aeca65c5e2d3?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 809);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    810, 300, 0, 3, 1.5, 11, '2023-11-23', 'Добавит вашему суму необходимый вкус.', 'Капуста', 'https://images.unsplash.com/photo-1594282486552-05b4d80fbb9f?q=80&w=1885&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 810);