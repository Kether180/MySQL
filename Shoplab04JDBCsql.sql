CREATE TABLE customer
(
  c_id int,
  name varchar(30) NOT NULL,
  CONSTRAINT pk_customer PRIMARY KEY(c_id)
);

CREATE TABLE orders
(
  o_nr int, -- CONSTRAINT pk_orders PRIMARY KEY,
  ordered_at timestamp NOT NULL,
  c_id int REFERENCES customer, -- CONSTRAINT ordered_by
  CONSTRAINT pk_orders PRIMARY KEY(o_nr)
);

CREATE TABLE article
(
  a_nr int, -- CONSTRAINT pk_article PRIMARY KEY,
  name varchar(30) NOT NULL,
  price numeric(8,2) NOT NULL,
  description varchar(40),
  CONSTRAINT pk_article PRIMARY KEY(a_nr)
);

CREATE TABLE order_item
(
  o_nr int REFERENCES orders, -- CONSTRAINT fk_oi_orders
  a_nr int REFERENCES article, -- CONSTRAINT fk_oi_article
  quantity int NOT NULL,
  CONSTRAINT check_qnt_pos CHECK (quantity > 0),
  CONSTRAINT pk_order_items PRIMARY KEY(o_nr, a_nr)
);

-- -------------------------------------------------------------

INSERT INTO customer VALUES (1, 'John');
INSERT INTO customer VALUES (2, 'Paul');
INSERT INTO customer VALUES (3, 'George');
INSERT INTO customer VALUES (4, 'Ringo');
-- ------
INSERT INTO orders VALUES (1, TIMESTAMP('2010-11-11'), 2);
INSERT INTO orders VALUES (2, timestamp('2011-01-27'), 2);
INSERT INTO orders VALUES (3, timestamp('2011-01-25'), 4);
INSERT INTO orders VALUES (4, timestamp('2011-02-04'), 4);
INSERT INTO orders VALUES (5, timestamp('2011-04-01'), 4);
-- ------
INSERT INTO article VALUES (1, 'Apple', 0.99, 'An apple a day keeps the doctor away');
INSERT INTO article VALUES (2, 'Melon', 2.99, 'Water Melon');
INSERT INTO article VALUES (3, 'Tomato', 0.49, null);
INSERT INTO article VALUES (4, 'Chili', 1.49, 'Very hot');
INSERT INTO article VALUES (5, 'Pear', 0.99, null);
INSERT INTO article VALUES (6, 'Lemon', 1.03, 'Very healthy');
INSERT INTO article VALUES (7, 'Grapefruit', 1.99, null);
INSERT INTO article VALUES (8, 'Kiwi', 0.79, 'Also healthy');
INSERT INTO article VALUES (9, 'Banana', 0.49, null);
INSERT INTO article VALUES (10, 'Cabbage', 1.35, null);

-- ------
INSERT INTO order_item VALUES (1,1, 5);
INSERT INTO order_item VALUES (1,2, 1);
INSERT INTO order_item VALUES (1,4, 10);

INSERT INTO order_item VALUES (2,4, 10);

INSERT INTO order_item VALUES (3,1, 10);

INSERT INTO order_item VALUES (4,1, 20);
INSERT INTO order_item VALUES (4,2, 2);

INSERT INTO order_item VALUES (5,1, 15);
INSERT INTO order_item VALUES (5,4, 100);
INSERT INTO order_item VALUES (5,6, 3);
INSERT INTO order_item VALUES (5,8, 5);
INSERT INTO order_item VALUES (5,9, 4);

COMMIT;   -- commit to all changes (inserts)
select orders.o_nr from orders