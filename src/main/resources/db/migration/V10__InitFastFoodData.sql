INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    847, 100, 0, 7, 0.3, 17, '2023-11-23', 'Сочный гамбургер с котлетой из говядины, сыром и свежими овощами.', 'Гамбургер', 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=1899&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 847);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    848, 80, 0, 5, 0.2, 17, '2023-11-23', 'Аппетитные чикен-наггетсы, панированные и жареные до золотистой корки.', 'Чикен-наггетсы', 'https://images.unsplash.com/photo-1569691899455-88464f6d3ab1?q=80&w=1886&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 848);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    849, 120, 0, 6, 0.5, 17, '2023-11-23', 'Ароматные картошечки фри, приготовленные с любовью.', 'Картошка фри', 'https://images.unsplash.com/photo-1606755456206-b25206cde27e?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 849);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    850, 90, 0, 3.5, 0.3, 17, '2023-11-23', 'Легкий и вкусный салат с тунцом, овощами и заправленный соусом.', 'Тунцовый салат', 'https://images.unsplash.com/photo-1622756144420-6877b1b7476e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 850);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    851, 110, 0, 4.5, 0.4, 17, '2023-11-23', 'Сочные и аппетитные хот-доги с горчицей и кетчупом.', 'Хот-дог', 'https://images.unsplash.com/photo-1599599810694-b5b37304c041?q=80&w=2127&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 851);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    852, 95, 0, 2.5, 0.2, 17, '2023-11-23', 'Классический пицца с сыром, томатами и базиликом.', 'Пицца', 'https://plus.unsplash.com/premium_photo-1675451537771-0dd5b06b3985?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 852);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    853, 105, 0, 3, 0.3, 17, '2023-11-23', 'Ароматный кофе с молоком, приготовленный по вашему выбору.', 'Кофе с молоком', 'https://images.unsplash.com/photo-1632588417408-2ae5f733e4ec?q=80&w=2093&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 853);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    854, 88, 0, 2, 0.2, 17, '2023-11-23', 'Легкий и освежающий фруктовый смузи с добавлением йогурта.', 'Фруктовый смузи', 'https://images.unsplash.com/photo-1525385133512-2f3bdd039054?q=80&w=1885&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 854);

INSERT INTO product
(id, count, count_of_buy, price, weight, category_product_id, date_create, description, name, photo_url, status)
SELECT
    855, 120, 0, 4, 0.3, 17, '2023-11-23', 'Сладкий и ароматный десерт с малиновым вкусом.', 'Малиновый чизкейк', 'https://images.unsplash.com/photo-1565605926614-8b9928ef9b03?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Available'
    WHERE NOT EXISTS (SELECT id FROM product WHERE id = 855);
