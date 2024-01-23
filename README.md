# Crowdfunding_ETL
Project 2

Instructions

The instructions for this mini-project are divided into the following subsections:

1. Create the Category and Subcategory DataFrames

2. Create the Campaign DataFrame

3. Create the Contacts DataFrame

4. Create the Crowdfunding Database

Create the Category and Subcategory DataFrames
Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories

A "category" column that contains only the category titles

The following image shows this category DataFrame:

category DataFrame

![image](https://github.com/MdataHolman/Crowdfunding_ETL/assets/147290574/b403b319-49a0-4cf2-92dd-b944bacab476)


Export the category DataFrame as category.csv and save it to your GitHub repository.

Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories

A "subcategory" column that contains only the subcategory titles

The following image shows this subcategory DataFrame:

subcategory DataFrame

![image](https://github.com/MdataHolman/Crowdfunding_ETL/assets/147290574/d8765142-a7f9-4845-ad2c-3a64431c2351)


Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.

Create the Campaign DataFrame
Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

The "cf_id" column

The "contact_id" column

The "company_name" column

The "blurb" column, renamed to "description"

The "goal" column, converted to the float data type

The "pledged" column, converted to the float data type

The "outcome" column

The "backers_count" column

The "country" column

The "currency" column

The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format

The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format

The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame

The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

The following image shows this campaign DataFrame:

campaign DataFrame

![image](https://github.com/MdataHolman/Crowdfunding_ETL/assets/147290574/29c25ff5-69a0-484a-9836-bc1444dc4543)


Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

Create the Contacts DataFrame
Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:

Option 1: Use Python dictionary methods.

Option 2: Use regular expressions.

If you chose Option 1, complete the following steps:

Import the contacts.xlsx file into a DataFrame.
Iterate through the DataFrame, converting each row to a dictionary.
Iterate through each dictionary, doing the following:
Extract the dictionary values from the keys by using a Python list comprehension.
Add the values for each row to a new list.
Create a new DataFrame that contains the extracted data.
Split each "name" column value into a first and last name, and place each in a new column.
Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.
If you chose Option 2, complete the following steps:

Import the contacts.xlsx file into a DataFrame.
Extract the "contact_id", "name", and "email" columns by using regular expressions.
Create a new DataFrame with the extracted data.
Convert the "contact_id" column to the integer type.
Split each "name" column value into a first and a last name, and place each in a new column.
Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.
Check that your final DataFrame resembles the one in the following image:

final contact DataFrame

Create the Crowdfunding Database

Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks 

![image](https://github.com/MdataHolman/Crowdfunding_ETL/assets/147290574/c713ee49-a517-4b6d-8ffe-4b366ffe28b6)


Use the information from the ERD to create a table schema for each CSV file.

Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.

Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.

Create a new Postgres database, named crowdfunding_db.

Using the database schema, create the tables in the correct order to handle the foreign keys.

Verify the table creation by running a SELECT statement for each table.

Import each CSV file into its corresponding SQL table.

Verify that each table has the correct data by running a SELECT statement for each.

select * from contacts

![image](https://github.com/MdataHolman/Crowdfunding_ETL/assets/147290574/0aa9cc33-a5cd-485c-97c3-bfe410c2e8d7)

select * from category

![image](https://github.com/MdataHolman/Crowdfunding_ETL/assets/147290574/70582851-0384-4b3c-a7d9-360eec0ef93f)

select * from subcategory

![image](https://github.com/MdataHolman/Crowdfunding_ETL/assets/147290574/77bf62c8-bc50-47dc-8b45-5aed0bb1083a)

select * from campaign

![image](https://github.com/MdataHolman/Crowdfunding_ETL/assets/147290574/47ca7142-1b72-492e-a9da-aae8b5d03502)


