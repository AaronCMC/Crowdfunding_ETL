DROP TABLE contacts;
DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE campaign;


CREATE TABLE contacts (
	contact_id INTEGER NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(60) NOT NULL,
	PRIMARY KEY (contact_id)
);

CREATE TABLE category (
	category_id VARCHAR(10) NOT NULL,
	category VARCHAR(30) NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) NOT NULL,
	"sub-category" VARCHAR(30) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign (
	subcategory_id VARCHAR(30) NOT NULL,
	category_id VARCHAR(30),
	cf_id INTEGER NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(60) NOT NULL,
	description TEXT,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(30) NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	staff_pick BOOLEAN DEFAULT False,
	spotlight BOOLEAN DEFAULT False,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);


SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;