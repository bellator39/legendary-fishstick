create table if not exists blog_category
(
    id   bigserial
        primary key,
    name varchar(255)
);

create table if not exists blog
(
    blog_category_id bigint
        constraint fke6f1t09ecdjvr2ukrvijrpef4
            references blog_category,
    date_create      timestamp(6),
    id               bigserial
        primary key,
    author           varchar(255),
    photo_url        varchar(255),
    text             varchar(255),
    title            varchar(255)
);

create table if not exists category_product
(
    id          bigserial
        primary key,
    description varchar(255),
    name        varchar(255)
);


create table if not exists contacts
(
    date_send timestamp(6),
    id        bigserial
        primary key,
    email     varchar(255),
    message   varchar(255),
    name      varchar(255)
);


create table if not exists orders
(
    total_price double precision,
    date_order  timestamp(6),
    id          bigserial
        primary key,
    city        varchar(255),
    email       varchar(255),
    name        varchar(255),
    order_notes varchar(255),
    phone       varchar(255),
    soname      varchar(255),
    status      varchar(255),
    street      varchar(255)
);

create table if not exists product
(
    count               integer          not null,
    count_of_buy        integer,
    price               double precision not null,
    weight              double precision not null,
    category_product_id bigint
        constraint fkippb821nwiaprbcw1bb77fhm0
            references category_product,
    date_create         timestamp(6),
    id                  bigserial
        primary key,
    description         varchar(255),
    name                varchar(255),
    photo_url           varchar(255),
    status              varchar(255)
);


create table if not exists orders_list
(
    id         bigserial
        primary key,
    order_id   bigint
        constraint fke4o5x9q10stgxapbe84afi2ad
            references orders,
    product_id bigint
        constraint fk48r5fj8uamiwiaw3j3n79ldu6
            references product
);


create table if not exists product_review
(
    rating      integer not null,
    date_review timestamp(6),
    id          bigserial
        primary key,
    product_id  bigint
        constraint fkkaqmhakwt05p3n0px81b9pdya
            references product,
    email       varchar(255),
    name        varchar(255),
    soname      varchar(255)
);

create table if not exists users
(
    date_register timestamp(6),
    id            bigserial
        primary key,
    email         varchar(255),
    login         varchar(255),
    name          varchar(255),
    password_user varchar(255),
    soname        varchar(255),
    status        varchar(255),
    user_role     varchar(255)
        constraint users_user_role_check
            check ((user_role)::text = ANY
        ((ARRAY ['USER'::character varying, 'ADMIN'::character varying, 'MANAGER'::character varying])::text[]))
    );


create table if not exists cart_user
(
    id      bigserial
        primary key,
    user_id bigint
        constraint fkqya4aa7ab1jpi9mag9u40m65f
            references users
);


create table if not exists cart_product
(
    count        integer not null,
    cart_user_id bigint
        constraint fkevwc3iy1wt0n1w34erbpj4mja
            references cart_user,
    date_add     timestamp(6),
    id           bigserial
        primary key,
    product_id   bigint
        constraint fk2kdlr8hs2bwl14u8oop49vrxi
            references product
);


