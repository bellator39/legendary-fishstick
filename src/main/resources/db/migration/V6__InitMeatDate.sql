INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    812, 100, 0, 15, 2, 10, '2023-11-23', 'Сочное и нежное куриное филе, идеально подходит для приготовления.',
     'Куриное филе', 'https://images.unsplash.com/photo-1604503468506-a8da13d82791?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
     'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 812);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    813, 80, 0, 20, 3, 10, '2023-11-23', 'Отборное говяжье мясо, подходит для приготовления стейков.', 'Говядина', 'https://images.unsplash.com/photo-1662195302597-52809530722f?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
WHERE NOT EXISTS (SELECT id FROM product WHERE id = 813);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    814, 120, 0, 12, 1.5, 10, '2023-11-23', 'Свежий свиной окорок для приготовления в духовке.', 'Свиная грудинка', 'https://images.unsplash.com/photo-1559602580-78f1ba809b92?q=80&w=1941&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
WHERE NOT EXISTS (SELECT id FROM product WHERE id = 814);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    815, 90, 0, 18, 2, 10, '2023-11-23', 'Красная рыба для приготовления деликатесов.', 'Лосось', 'https://images.unsplash.com/photo-1599084993091-1cb5c0721cc6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
WHERE NOT EXISTS (SELECT id FROM product WHERE id = 815);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    816, 110, 0, 25, 1.8, 10, '2023-11-23', 'Магребский ламблинг, подходит для приготовления традиционных блюд.', 'Ламблинг', 'https://images.unsplash.com/photo-1608039755401-742074f0548d?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
WHERE NOT EXISTS (SELECT id FROM product WHERE id = 816);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    817, 95, 0, 22, 2.5, 10, '2023-11-23', 'Идеально приготовленные свиные ребрышки, подходят для гриля.', 'Свиные ребрышки', 'https://images.unsplash.com/photo-1529193591184-b1d58069ecdd?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
WHERE NOT EXISTS (SELECT id FROM product WHERE id = 817);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    818, 105, 0, 30, 2, 10, '2023-11-23', 'Краснокожий бифштекс, отлично подходит для жарки.', 'Бифштекс', 'https://images.unsplash.com/photo-1588347818036-558601350947?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
WHERE NOT EXISTS (SELECT id FROM product WHERE id = 818);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    819, 88, 0, 17, 1.5, 10, '2023-11-23', 'Куриные крылышки, пригодные для приготовления в духовке или фритюре.', 'Куриные ножки', 'https://images.unsplash.com/photo-1588767768106-1b20e51d9d68?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
WHERE NOT EXISTS (SELECT id FROM product WHERE id = 819);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    820, 120, 0, 28, 2.2, 10, '2023-11-23', 'Аргентинский стейк из вырезки, отличается нежностью и сочностью.', 'Аргентинская вырезка', 'https://www.campomeat.com/cdn/shop/products/tenderloin-angus-argentina-517783_720x.jpg?v=1675891566', 'Available'
WHERE NOT EXISTS (SELECT id FROM product WHERE id = 820);