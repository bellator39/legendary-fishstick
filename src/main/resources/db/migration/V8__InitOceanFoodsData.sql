INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    831, 120, 0, 18, 1.5, 15, '2023-11-23', 'Свежие креветки, идеально подходят для приготовления разнообразных блюд.', 'Креветки', 'https://images.unsplash.com/photo-1628919350249-eb45d8829629?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 831);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    832, 100, 0, 25, 2, 15, '2023-11-23', 'Мидии высокого качества, подходят для приготовления пасты и паэльи.', 'Мидии', 'https://images.unsplash.com/photo-1608135227059-95aacee01035?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 832);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    833, 80, 0, 20, 2.5, 15, '2023-11-23', 'Свежий осьминог, подходит для приготовления суши и морских деликатесов.', 'Осьминог', 'https://plus.unsplash.com/premium_photo-1669261880961-ea68f9a2b7f2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 833);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    834, 95, 0, 22, 1.8, 15, '2023-11-23', 'Нежные кальмары, подходят для приготовления пасты и морских салатов.', 'Кальмары', 'https://images.unsplash.com/photo-1599486137713-e5d4d67e08ed?q=80&w=1922&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 834);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    835, 110, 0, 28, 2.2, 15, '2023-11-23', 'Семга высокого качества, подходит для приготовления суши и роллов.', 'Семга', 'https://images.unsplash.com/photo-1614627293113-e7e68163d958?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 835);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    836, 120, 0, 18, 1.5, 15, '2023-11-23', 'Свежие устрицы, отличный выбор для ценителей морепродуктов.', 'Устрицы', 'https://images.unsplash.com/photo-1578882422378-9ed72be08b5e?q=80&w=1872&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 836);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    838, 80, 0, 20, 2.5, 15, '2023-11-23', 'Свежие крабовые палочки, удобны для приготовления закусок и салатов.', 'Крабовые палочки', 'https://truefish.com/cdn/shop/products/imitation-crab-stick.jpg_s_1024x1024_w_is_k_20_c_8gDPayM0EjyzBtaMm9sTKe12EZc8G-dC7COrQHXCabw_740x.jpg?v=1668544219', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 838);
