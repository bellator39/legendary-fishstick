INSERT INTO blog_category
(id,name)
SELECT 10, 'Beauty'
    WHERE
    NOT EXISTS (
        SELECT id FROM blog_category WHERE id = 10
    );

INSERT INTO blog_category
(id,name)
SELECT 11, 'Food'
    WHERE
    NOT EXISTS (
        SELECT id FROM blog_category WHERE id = 11
    );

INSERT INTO blog_category
(id,name)
SELECT 12, 'Life Style'
    WHERE
    NOT EXISTS (
        SELECT id FROM blog_category WHERE id = 12
    );

INSERT INTO blog_category
(id,name)
SELECT 13, 'Travel'
    WHERE
    NOT EXISTS (
        SELECT id FROM blog_category WHERE id = 13
    );