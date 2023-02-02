psql --username=freecodecamp --dbname=postgres

CREATE DATABASE salon;

\connect salon

CREATE TABLE appointments (
    customer_id INT NOT NULL REFERENCES customers(customer_id),
    service_id INT NOT NULL REFERENCES services(service_id),
    "time" character varying(20) NOT NULL,
    appointment_id SERIAL NOT NULL PRIMARY KEY
);

CREATE TABLE customers (
    customer_id SERIAL NOT NULL PRIMARY KEY,
    phone VARCHAR(30) NOT NULL UNIQUE,
    name character varying(30) NOT NULL
);

CREATE TABLE services (
    service_id SERIAL NOT NULL PRIMARY KEY,
    name character varying(30) NOT NULL
);

INSERT INTO services VALUES (1, 'cut');
INSERT INTO services VALUES (2, 'color');
INSERT INTO services VALUES (3, 'perm');
INSERT INTO services VALUES (4, 'style');
INSERT INTO services VALUES (5, 'trim');