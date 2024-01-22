-- Create the Crowdfunding Database
-- creating contacts table and set primary key -- 

CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar (255)  NOT NULL,
    last_name varchar (255)  NOT NULL,
    email varchar (255)  NOT NULL,
	primary key (contact_id)
);

-- creating category table and set primary key --

CREATE TABLE category (
    category_id varchar (255)   NOT NULL,
    category varchar (255)  NOT NULL,
	primary key (category_id)
);

-- creating subcategory table and set primary key

CREATE TABLE subcategory (
    subcategory_id varchar (255)  NOT NULL,
    subcategory varchar (255)  NOT NULL,
	primary key (subcategory_id)
);

-- creating campaign table and set primary key and foreign keys

CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar (255)  NOT NULL,
    description varchar (255)  NOT NULL,
    goal double precision  NOT NULL,
    pledged double precision  NOT NULL,
    outcome varchar (255)  NOT NULL,
    backers_count int   NOT NULL,
    country varchar (255)  NOT NULL,
    currency varchar (255)  NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar (255)  NOT NULL,
    subcategory_id varchar (255)  NOT NULL,
	primary key (cf_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);

select * from contacts
select * from category
select * from subcategory
select * from campaign