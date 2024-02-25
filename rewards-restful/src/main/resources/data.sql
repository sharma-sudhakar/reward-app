CREATE TABLE IF NOT EXISTS customer (
    id int not null,
    name varchar(255) not null,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS transaction (
    id int not null,
    description varchar(255) not null,
    total varchar(255) not null,
    txn_date timestamp not null,
    customer_id int not null,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

INSERT INTO customer(id, name) VALUES (1000, 'Sudhakar');
INSERT INTO customer(id, name) VALUES (1001, 'Vidyakar');
INSERT INTO customer(id, name) VALUES (1002, 'Shashi');
INSERT INTO customer(id, name) VALUES (1003, 'Ravi');

INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1001, 'Purchase 1', 100, '2019-10-17 10:20:10', 1000);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1002, 'Purchase 2', 50, '2019-10-01 10:20:10', 1000);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1003, 'Purchase 3', 120, '2019-10-10 10:20:10', 1000);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1004, 'Purchase 10', 175.32, '2019-10-07 10:20:10', 1000);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1005, 'Purchase 20', 65.75, '2019-10-05 10:20:10', 1000);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1006, 'Purchase 30', 210.50, '2019-10-03 10:20:10', 1000);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1009, 'Purchase 31', 42.80, '2019-10-18 17:10:10', 1000);

INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1010, 'Purchase 1', 100, '2019-10-17 10:20:10', 1003);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1011, 'Purchase 2', 50, '2019-10-01 10:20:10', 1003);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1012, 'Purchase 3', 120, '2019-10-10 10:20:10', 1003);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1013, 'Purchase 10', 175.32, '2019-10-07 10:20:10', 1003);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1014, 'Purchase 20', 65.75, '2019-10-05 10:20:10', 1003);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1015, 'Purchase 30', 210.50, '2019-10-03 10:20:10', 1003);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1016, 'Purchase 31', 42.80, '2019-10-18 17:10:10', 1003);

INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1200, 'Purchase 200', 25.60, '2019-10-01 12:20:10', 1002);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1201, 'Purchase 201', 80.50, '2019-10-05 15:00:10', 1002);
INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1202, 'Purchase 202', 116.14, '2019-10-10 11:30:10', 1002);

INSERT INTO transaction(id, description, total, txn_date, customer_id) VALUES (1008, 'Purchase 5', 200, '2019-10-17 10:20:10', 1001);

