CREATE TABLE user(
   user_id INTEGER PRIMARY KEY AUTOINCREMENT,
   username         TEXT    NOT NULL,
   first_name         TEXT ,
   last_name         TEXT ,
   password         TEXT    NOT NULL,
   email         TEXT NOT NULL,
   dob         TEXT
);

INSERT INTO user (username,password,email) VALUES ('pramit','12345','pramitsawant11@gmail.com');
INSERT INTO user (username,password,email) VALUES ('ajay','12345','ajay@gmail.com');
INSERT INTO user (username,password,email) VALUES ('prajwal','12345','prajwal@gmail.com');
INSERT INTO user (username,password,email) VALUES ('akshay','12345','akshay@gmail.com');
INSERT INTO user (username,password,email) VALUES ('aksar','12345','aksar@gmail.com');
INSERT INTO user (username,password,email) VALUES ('malik','12345','malik@gmail.com');
INSERT INTO user (username,password,email) VALUES ('jarett','12345','jarett@gmail.com');
INSERT INTO user (username,password,email) VALUES ('cajetan','12345','cajetan@gmail.com');
INSERT INTO user (username,password,email) VALUES ('prateek','12345','prateek@gmail.com');
INSERT INTO user (username,password,email) VALUES ('clinton','12345','clinton@gmail.com');
INSERT INTO user (username,password,email) VALUES ('sachin','12345','sachin@gmail.com');
INSERT INTO user (username,password,email) VALUES ('abhishek','12345','abhishek@gmail.com');
INSERT INTO user (username,password,email) VALUES ('omkar','12345','omkar@gmail.com');
INSERT INTO user (username,password,email) VALUES ('paresh','12345','paresh@gmail.com');

CREATE TABLE merchant(
   merchant_id INTEGER PRIMARY KEY AUTOINCREMENT,
   username         TEXT    NOT NULL,
   first_name         TEXT  ,
   last_name         TEXT  ,
   email         TEXT    NOT NULL,
   password         TEXT    NOT NULL,
   dob         TEXT    
);

INSERT INTO merchant (username,password,email) VALUES ('datta','12345','datta@gmail.com');
INSERT INTO merchant (username,password,email) VALUES ('martins','12345','martins@gmail.com');
INSERT INTO merchant (username,password,email) VALUES ('popayes','12345','popayes@gmail.com');
INSERT INTO merchant (username,password,email) VALUES ('borkar','12345','borkar@gmail.com');
INSERT INTO merchant (username,password,email) VALUES ('sawant','12345','sawant@gmail.com');
INSERT INTO merchant (username,password,email) VALUES ('vincent','12345','vincent@gmail.com');
INSERT INTO merchant (username,password,email) VALUES ('kadar','12345','kadar@gmail.com');
INSERT INTO merchant (username,password,email) VALUES ('oddel','12345','oddel@gmail.com');
INSERT INTO merchant (username,password,email) VALUES ('rama','12345','rama@gmail.com');
INSERT INTO merchant (username,password,email) VALUES ('ulhas','12345','ulhas@gmail.com');
INSERT INTO merchant (username,password,email) VALUES ('gopal','12345','gopal@gmail.com');
INSERT INTO merchant (username,password,email) VALUES ('dessi','12345','dessi@gmail.com');
INSERT INTO merchant (username,password,email) VALUES ('dhoni','12345','dhoni@gmail.com');
INSERT INTO merchant (username,password,email) VALUES ('ambani','12345','ambani@gmail.com');



CREATE TABLE brand_category(
   brand_category_id INTEGER PRIMARY KEY AUTOINCREMENT,
   brand_category_name         TEXT    NOT NULL,
   brand_category_description 
);
INSERT INTO brand_category (brand_category_name) VALUES ('Restaurant');
INSERT INTO brand_category (brand_category_name) VALUES ('Real Estate');
INSERT INTO brand_category (brand_category_name) VALUES ('Retail store');
INSERT INTO brand_category (brand_category_name) VALUES ('Music');
INSERT INTO brand_category (brand_category_name) VALUES ('Clothing');
INSERT INTO brand_category (brand_category_name) VALUES ('Vehicle');


CREATE TABLE brand(
   brand_id INTEGER PRIMARY KEY AUTOINCREMENT,
   brand_name         TEXT    NOT NULL,
   brand_category         INTEGER    NOT NULL,
   FOREIGN KEY (brand_category) REFERENCES brand_category(brand_category_id)
);

INSERT INTO brand (brand_name,brand_category) VALUES ('Kadar Super Store',10);
INSERT INTO brand (brand_name,brand_category) VALUES ('Borkar Super Store',10);
INSERT INTO brand (brand_name,brand_category) VALUES ('Oddel Super Store',10);
INSERT INTO brand (brand_name,brand_category) VALUES ('Popayes Fast Food',4);
INSERT INTO brand (brand_name,brand_category) VALUES ('Martins Corner',4);
INSERT INTO brand (brand_name,brand_category) VALUES ('Ullhas Food',4);
INSERT INTO brand (brand_name,brand_category) VALUES ('Gopal Food',4);
INSERT INTO brand (brand_name,brand_category) VALUES ('Rama Food',4);
INSERT INTO brand (brand_name,brand_category) VALUES ('Dessi Cuppa',4);
INSERT INTO brand (brand_name,brand_category) VALUES ('Jio Mobile Store',5);
INSERT INTO brand (brand_name,brand_category) VALUES ('Dhoni Motors',9);

CREATE TABLE assign_brand_to_merchant(
   assign_id INTEGER PRIMARY KEY AUTOINCREMENT,
   brand_id         INT    NOT NULL,
   merchant_id         INT    NOT NULL,
   FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
   FOREIGN KEY (merchant_id) REFERENCES merchant(merchant_id)
);

INSERT INTO assign_brand_to_merchant (brand_id,merchant_id) VALUES (1,7);
INSERT INTO assign_brand_to_merchant (brand_id,merchant_id) VALUES (2,4);
INSERT INTO assign_brand_to_merchant (brand_id,merchant_id) VALUES (3,8);
INSERT INTO assign_brand_to_merchant (brand_id,merchant_id) VALUES (4,3);
INSERT INTO assign_brand_to_merchant (brand_id,merchant_id) VALUES (5,2);
INSERT INTO assign_brand_to_merchant (brand_id,merchant_id) VALUES (6,10);
INSERT INTO assign_brand_to_merchant (brand_id,merchant_id) VALUES (7,11);
INSERT INTO assign_brand_to_merchant (brand_id,merchant_id) VALUES (8,9);
INSERT INTO assign_brand_to_merchant (brand_id,merchant_id) VALUES (9,12);
INSERT INTO assign_brand_to_merchant (brand_id,merchant_id) VALUES (10,14);
INSERT INTO assign_brand_to_merchant (brand_id,merchant_id) VALUES (11,13);

CREATE TABLE state(
   state_id INTEGER PRIMARY KEY AUTOINCREMENT,
   state_name         TEXT    NOT NULL
   );
INSERT INTO state (state_name) VALUES ('Andhra Pradesh')
INSERT INTO state (state_name) VALUES ('Arunachal Pradesh')
INSERT INTO state (state_name) VALUES ('Assam')
INSERT INTO state (state_name) VALUES ('Bihar')
INSERT INTO state (state_name) VALUES ('Chattisgarh')
INSERT INTO state (state_name) VALUES ('Delhi')
INSERT INTO state (state_name) VALUES ('Goa')
INSERT INTO state (state_name) VALUES ('Gujarat')
INSERT INTO state (state_name) VALUES ('Haryana')
INSERT INTO state (state_name) VALUES ('Himachal Pradesh')
INSERT INTO state (state_name) VALUES ('Jammu & Kashmir')
INSERT INTO state (state_name) VALUES ('Jharkhand')
INSERT INTO state (state_name) VALUES ('Karnataka')
INSERT INTO state (state_name) VALUES ('Kerala')
INSERT INTO state (state_name) VALUES ('Madhya Pradesh')
INSERT INTO state (state_name) VALUES ('Maharashtra')
INSERT INTO state (state_name) VALUES ('Manipur')
INSERT INTO state (state_name) VALUES ('Meghalaya')
INSERT INTO state (state_name) VALUES ('Mizoram')
INSERT INTO state (state_name) VALUES ('Nagaland')
INSERT INTO state (state_name) VALUES ('Orissa')
INSERT INTO state (state_name) VALUES ('Punjab')
INSERT INTO state (state_name) VALUES ('Rajasthan')
INSERT INTO state (state_name) VALUES ('Sikkim')
INSERT INTO state (state_name) VALUES ('Tamil Nadu')
INSERT INTO state (state_name) VALUES ('Tripura')
INSERT INTO state (state_name) VALUES ('Uttar Pradesh')
INSERT INTO state (state_name) VALUES ('UttaraKhand')
INSERT INTO state (state_name) VALUES ('West Bengal')   

CREATE TABLE brand_outlet(
   brand_outlet_id INTEGER PRIMARY KEY AUTOINCREMENT,
   brand_outlet_name         TEXT    NOT NULL,
   brand_outlet_state         TEXT    NOT NULL,
   brand_outlet_location         TEXT,
   brand_outlet_zip_code         TEXT    
);
INSERT INTO brand_outlet (brand_outlet_name,brand_outlet_state) VALUES ('Borkar Super Stores Benaulim',7)
INSERT INTO brand_outlet (brand_outlet_name,brand_outlet_state) VALUES ('Borkar Super Stores Margao',7)

CREATE TABLE assign_outlet_to_brand(
   assign_id INTEGER PRIMARY KEY AUTOINCREMENT,
   brand_id         INTEGER    NOT NULL,
   brand_outlet_id         INTEGER    NOT NULL,
   FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
   FOREIGN KEY (brand_outlet_id) REFERENCES brand_outlet(brand_outlet_id)
);

--- Till Here ---

CREATE TABLE brand_images(
   brand_image_id INT PRIMARY KEY AUTOINCREMENT,
   brand_image_description         TEXT    NOT NULL,
   brand_image_path         TEXT    NOT NULL
);

CREATE TABLE assign_images_to_brand(
   assign_id INT PRIMARY KEY AUTOINCREMENT,
   brand_image_id         INT    NOT NULL,
   brand_outlet_id         INT    NOT NULL,
   FOREIGN KEY (brand_image_id) REFERENCES brand_images(brand_image_id),
   FOREIGN KEY (brand_outlet_id) REFERENCES brand_outlet(brand_outlet_id)
);

CREATE TABLE brand_offers(
   brand_offers_id INT PRIMARY KEY AUTOINCREMENT,
   brand_offers_category         TEXT    NOT NULL,
   brand_offers_title         TEXT    NOT NULL,
   brand_offers_description         TEXT    NOT NULL,
   brand_offers_terms_conditions         TEXT    NOT NULL   
   brand_offers_created         TEXT    NOT NULL,
   brand_offers_validity         TEXT    NOT NULL,
   brand_offers_paid         TEXT    NOT NULL,
);

CREATE TABLE assign_brand_offers_to_brand_outlet(
   assign_id INT PRIMARY KEY AUTOINCREMENT,
   brand_offers_id         INT    NOT NULL,
   brand_outlet_id         INT    NOT NULL,
   FOREIGN KEY (brand_offers_id) REFERENCES brand_offers(brand_offers_id),
   FOREIGN KEY (brand_outlet_id) REFERENCES brand_outlet(brand_outlet_id)
);

CREATE TABLE offer_likes(
   assign_id INT PRIMARY KEY AUTOINCREMENT,
   brand_offers_id         INT    NOT NULL,
   user_id         INT    NOT NULL,
   FOREIGN KEY (brand_offers_id) REFERENCES brand_offers(brand_offers_id),
   FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE offer_redeemed(
   assign_id INT PRIMARY KEY AUTOINCREMENT,
   brand_offers_id         INT    NOT NULL,
   user_id         INT    NOT NULL,
   FOREIGN KEY (brand_offers_id) REFERENCES brand_offers(brand_offers_id),
   FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE order(
   order_id INT PRIMARY KEY AUTOINCREMENT,
   order_description         INT    NOT NULL,
);

CREATE TABLE items(
   order_id         INT    NOT NULL,
   brand_offers_id         INT    NOT NULL,
   FOREIGN KEY (brand_offers_id) REFERENCES brand_offers(brand_offers_id),
   FOREIGN KEY (order_id) REFERENCES order(order_id)
);

CREATE TABLE payment(
   payment_id INT PRIMARY KEY AUTOINCREMENT,
   order_id         INT    NOT NULL,
   reference_number         INT    NOT NULL,   
   amount         INT    NOT NULL,   
);




























