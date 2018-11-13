CREATE TABLE user(
   user_id INT PRIMARY KEY AUTOINCREMENT,
   username         TEXT    NOT NULL,
   first_name         TEXT    NOT NULL,
   last_name         TEXT    NOT NULL,
   email         TEXT    NOT NULL,
   dob         TEXT    NOT NULL
);

CREATE TABLE merchant(
   merchant_id INT PRIMARY KEY AUTOINCREMENT,
   username         TEXT    NOT NULL,
   first_name         TEXT    NOT NULL,
   last_name         TEXT    NOT NULL,
   email         TEXT    NOT NULL,
   dob         TEXT    NOT NULL
);

CREATE TABLE brand(
   brand_id INT PRIMARY KEY AUTOINCREMENT,
   brand_name         TEXT    NOT NULL,
   category         TEXT    NOT NULL,
);

CREATE TABLE brand_outlet(
   brand_outlet_id INT PRIMARY KEY AUTOINCREMENT,
   brand_outlet_name         TEXT    NOT NULL,
   brand_outlet_name         TEXT    NOT NULL,

);































