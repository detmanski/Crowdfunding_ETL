# Crowdfunding_ETL

Project 2 
Dianne Etmanski and Ayokunle Oluwole

This repository contains files for the completed Crowdfunding ETL Project. 

The Jupyter Notebooks are in the 'Starter Files' Folder. 
It contains code for the 4 dataframes we needed to create. 
Category and Subcategory dataframes were extracted from the crowdfunding.xlsx file and transformed to contain only the category/subcategory id and 
category/subcategory name respectively. 

The campaign dataframe was extracted from the crowdfunding.xlsx file and transformed by first renaming the columns. 'Blurb', 'launched_at' and
'deadline' were renamed to 'description', 'launch_date' and 'end_date'. The 'goal' and 'pledged' columns were converted to a float datatype.
The 'launched_date' and 'end_date' columns were converted to datetime format. The dataframe was then merged with the category and 
subcategory dataframes to inclued the unique id numbers and a column was created with the contact ID numbers. 

The contact dataframe was extracted from the contacts.xlsx file. We used Pandas to complete this section. The dataframe was loaded into a json
format and printed to view the data. The data was separated into columns 'contact_id', 'name' and 'email'. The name column was then split into 'first_name'
and 'last_name', and the 'name' column dropped. The datatypes were checked and then exported to a csv file. 

After the CSV files were complete we sketched the ERD using quickDBD. You can view the diagram in the main folder for this repository: 'ERDdiagram'.png.
The ERD shows the relationships between the tables. 

This information was then used to build the tables into a Postgres file. you can find the SQL file in the main folder labeled 'crowdfunding_db_schema.sql'.
After the tables were built, the csv files were successfully imported into the database. All data types, primary keys and foreign keys have been specified. Screenshots of each table have been included.

Our team divided the work for this project as follows:
Ayo- completed the Jupyter Notebook, dataframes and csv files
Dianne- created the ERD diagram, SQL database and this readme file. 

Thanks for viewing this repository!

 
