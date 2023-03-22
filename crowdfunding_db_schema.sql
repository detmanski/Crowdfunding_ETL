CREATE TABLE category (
	category_id VARCHAR(5) NOT NULL PRIMARY KEY,
	category VARCHAR(30) NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(8) NOT NULL PRIMARY KEY,
	subategory VARCHAR(30) NOT NULL
);

CREATE TABLE contacts (
	contact_id INT NOT NULL PRIMARY KEY, 
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL
);

CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(200) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(30),
	backers_count INT NOT NULL, 
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(5) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;

