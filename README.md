# Mock Sales Analysis
I've started this little project where I want to put all the skills I learned during university to the test. It's going to be a case study of what I might encounter in the industry. My goal is to showcase my abilities while also learning and growing my skills.

For this project, I'm going to use agile methodologies, which I learned in INFO226, to tackle the business requirements. I'll be using Microsoft SQL Server Management for data queries, which was covered in DATA202. I'll be building an interactive dashboard using PowerBI. Finally, I'll be using ChatGPT to help me come up with prompts for business problems/requirements.

I'm using the AdventureWorks database, which is a sample database created by Microsoft. This database simulates a bike manufacturing company and contains useful data on sales, production, human resources, and more. One of the plus side about using the AdventureWorks database is that ChatGPT is familiar with it, so it can generate relevant business requests that are specific to the database.

# Business Request
I asked ChatGPT to write a sample email from a sales manager, requesting a dashboard based on the AdventureWorks database. This is what it came out as and what I'll base my dashboard off of.

`Subject: Request to improve Internet sales reports`

`Hi Daffa,`

`I hope this email finds you well. I am writing to you to discuss the improvement of our Internet sales reports. As the sales manager, I believe that we need to move from static reports to visual dashboards to enhance our reporting capabilities.`

`Our goal is to focus on how much we have sold of what products, to which clients, and how sales have been over time. As each salesperson works with different products and customers, it would be beneficial to have the ability to filter them.`

`To help with our analysis, I have added a spreadsheet to measure our numbers against budget. This will enable us to compare our values against performance. The budget is for 2021, and we usually look two years back in time when analyzing sales.`

`Please let me know if there is anything else you need from me to make this project a success. I appreciate your hard work and dedication to improving our sales analysis.`

`Best regards,`

`Sales Manager`

# Business Demand Overview:
As part of our agile development process, we have received a business demand from the Sales Manager. They have requested visual dashboards and improved sales reporting to enhance our business processes. To fulfill this demand, we will be using PowerBI and integrating it with our CRM system. Additionally, we have been provided with Excel files containing the budget for the year 2021, which we will need to incorporate into our reporting.

## User Stories:
- As a sales manager, I want a dashboard overview of internet sales so that I can follow which customers and products sell the best. The acceptance criteria include a dashboard that updates data once a day.
- As a sales representative, I want a detailed overview of internet sales per customer so that I can follow up with my customers who buy the most and identify potential upselling opportunities. The acceptance criteria include a dashboard that allows me to filter data for each customer.
- As a sales representative, I want a detailed overview of internet sales per product so that I can follow up on my products that sell the most. The acceptance criteria include a dashboard that allows me to filter data for each product.
- As a sales manager, I want a dashboard overview of internet sales so that I can follow sales over time against budget. The acceptance criteria include a dashboard with graphs and KPIs that compare against budget.

# *E*TL
I'm going to use Microsoft SQL Server Management Studio to extract the information we need and put it into a CSV file that we can load up to PowerBI later on. I've started by identifying the relevant tables from the AdventureWorks database. After comparing the business requirements with the available tables, I've narrowed it down to 7 tables that we need to export data from: DimCustomer, DimGeography, DimDate, DimProduct, DimProductCategory, DimProductSubCategory and FactInternetSales. These tables will give us the data we need to create informative reports and visualizations.

## Date Table
To prepare the data, I have selected the necessary rows and modified the names accordingly. Specifically, I have included a row of abbreviated month names using the LEFT function and filtered the data to only include records from 2019 onwards.

## Customer Table
Same with the Date table, I've only selected the necessary rows. I've used the CASE, WHEN, THEN, END function to combine the FirstName and LastName columns into one FullName column. To get more information on our customers' locations, I joined the DimGeography table to obtain their city data

## Product Table
There's a bit more complexity in this table compared to the previous ones. I joined the table with ProductCategory and ProductSubCategory to obtain the ProductCategoryName and ProductSubCategoryName, respectively. Additionally, I used the ISNULL function to replace any NULL values in the status row with "Outdated."

## Internet Sales Table
This table is fairly straightforward. To meet our business requirement, I applied a filter to only include data that is within a two-year window from the date of extraction. This ensures that we are only working with relevant and up-to-date data.
