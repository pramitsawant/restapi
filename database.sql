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
   brand_category         TEXT    NOT NULL,
   FOREIGN KEY (brand_category) REFERENCES brand_category(brand_category_id)
);

CREATE TABLE brand_category(
   brand_category_id INT PRIMARY KEY AUTOINCREMENT,
   brand_category_name         TEXT    NOT NULL,
   brand_category_description         TEXT    NOT NULL
);

CREATE TABLE assign_brand_to_merchant(
   assign_id INT PRIMARY KEY AUTOINCREMENT,
   brand_id         INT    NOT NULL,
   merchant_id         INT    NOT NULL,
   FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
   FOREIGN KEY (merchant_id) REFERENCES merchant(merchant_id)
);

CREATE TABLE brand_outlet(
   brand_outlet_id INT PRIMARY KEY AUTOINCREMENT,
   brand_outlet_name         TEXT    NOT NULL,
   brand_outlet_state         TEXT    NOT NULL,
   brand_outlet_village         TEXT    NOT NULL,   
   brand_outlet_location         TEXT    NOT NULL,
   brand_outlet_zip_code         TEXT    NOT NULL
);

CREATE TABLE assign_outlet_to_brand(
   assign_id INT PRIMARY KEY AUTOINCREMENT,
   brand_id         INT    NOT NULL,
   brand_outlet_id         INT    NOT NULL,
   FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
   FOREIGN KEY (brand_outlet_id) REFERENCES brand_outlet(brand_outlet_id)
);

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




























