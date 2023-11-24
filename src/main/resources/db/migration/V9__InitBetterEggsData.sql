
INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    841, 200, 0, 7, 0.5, 16, '2023-11-23', 'Натуральное сливочное масло, идеально подходит для выпечки и приготовления соусов.', 'Сливочное масло', 'https://images.unsplash.com/photo-1589985270826-4b7bb135bc9d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 841);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    842, 30, 0, 2.5, 0.3, 16, '2023-11-23', 'Куриное яйцо, свежее и богатое белком.', 'Куриное яйцо', 'https://images.unsplash.com/photo-1536816579748-4ecb3f03d72a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 842);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    843, 150, 0, 4, 0.5, 16, '2023-11-23', 'Твердый сыр, отлично подходит для закусок и приготовления сырных блюд.', 'Твердый сыр', 'https://images.unsplash.com/photo-1486297678162-eb2a19b0a32d?q=80&w=2073&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 844);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    845, 80, 0, 3.5, 0.7, 16, '2023-11-23', 'Молоко высокого качества, натуральный продукт для ваших напитков и блюд.', 'Молоко', 'https://images.unsplash.com/photo-1550583724-b2692b85b150?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 841);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    846, 100, 0, 5, 0.5, 16, '2023-11-23', 'Сметана высокого качества, добавит нежности и вкуса вашим блюдам.', 'Сметана', 'https://www.biggerbolderbaking.com/wp-content/uploads/2016/09/1C5A7606.jpg', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 846);