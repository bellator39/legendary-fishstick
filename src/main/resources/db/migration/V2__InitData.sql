INSERT INTO category_product
(id, description,name)
SELECT 10, 'Fresh Meat','Fresh Meat'
    WHERE
    NOT EXISTS (
        SELECT id FROM category_product WHERE id = 10
    );

INSERT INTO category_product
(id, description,name)
SELECT 11, 'Vegetables','Vegetables'
    WHERE
    NOT EXISTS (
        SELECT id FROM category_product WHERE id = 11
    );

INSERT INTO category_product
(id, description,name)
SELECT 13, 'Fruit','Fruit'
    WHERE
    NOT EXISTS (
        SELECT id FROM category_product WHERE id = 13
    );

INSERT INTO category_product
(id, description,name)
SELECT 15, 'Ocean Foods','Ocean Foods'
    WHERE
    NOT EXISTS (
        SELECT id FROM category_product WHERE id = 15
    );

INSERT INTO category_product
(id, description,name)
SELECT 16, 'Butter & Eggs','Butter & Eggs'
    WHERE
    NOT EXISTS (
        SELECT id FROM category_product WHERE id = 16
    );

INSERT INTO category_product
(id, description,name)
SELECT 17, 'Fastfood','Fastfood'
    WHERE
    NOT EXISTS (
        SELECT id FROM category_product WHERE id = 17
    );
