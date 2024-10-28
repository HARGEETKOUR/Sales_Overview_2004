# Sales_Overview_2004
## Project Introduction
This project leverages the [Classic Models sample database](https://www.mysqltutorial.org/wp-content/uploads/2023/10/mysqlsampledatabase.zip) to create a dynamic Sales Overview Dashboard in Power BI, for a fictional Company, Classic Models. By integrating SQL, Power BI, and Excel, the dashboard provides a comprehensive view of sales performance, profitability, and customer demographics. The goal of the project is to facilitate data-driven decision-making by visualizing key metrics and trends across product lines, countries, and office locations.

## Key Objectives
**Visualize Sales and Profit Performance**: Track sales, net profit, and cost of sales trends across multiple dimensions.<br>
<br>
**Analyze Product Line Profitability**: Assess profitability by product line, customer demographics, and geographic regions.<br>
<br>
**Interactive Exploration**: Enable easy filtering and drill-down into specific periods, regions, and product categories.<br>
<br>
**Data Optimization**:  Use Excel pivot tables for quick summaries and initial analysis, and SQL to structure data for Power BI.<br>

## Data Source
The Classic Models sample database, which provides data on customers, orders, employees, products, and more, can be downloaded from [Classic Models sample Database](https://www.mysqltutorial.org/wp-content/uploads/2023/10/mysqlsampledatabase.zip).

## Tools and Technologies
**Power BI**: The primary tool for data visualization, creating an interactive and engaging dashboard.<br>
<br>
**SQL**: Used for creating tables and querying data to prepare it for Power BI analysis.<br>
<br>
**Excel**: Utilized for pivot tables to summarize and optimize data for initial insights.<br>

## Table Schemas

This section provides the schemas for the key tables used in the Power BI dashboard, including their fields and data types.

### 1. Customers Table
| Column Name      | Data Type     | Description                     |
|------------------|---------------|---------------------------------|
| customer_id      | INT           | Unique identifier for customers |
| customer_name    | VARCHAR(100)  | Name of the customer            |
| contact_name     | VARCHAR(100)  | Contact person’s name           |
| country          | VARCHAR(50)   | Country of the customer         |

### 2. Employees Table
| Column Name      | Data Type     | Description                      |
|------------------|---------------|----------------------------------|
| employee_id      | INT           | Unique identifier for employees  |
| employee_name    | VARCHAR(100)  | Name of the employee             |
| office_id        | INT           | Identifier for the office        |
| job_title        | VARCHAR(50)   | Position of the employee         |

### 3. Offices Table
| Column Name      | Data Type     | Description                      |
|------------------|---------------|----------------------------------|
| office_id        | INT           | Unique identifier for offices    |
| city             | VARCHAR(100)  | City where the office is located |
| country          | VARCHAR(50)   | Country of the office            |

### 4. Orders Table
| Column Name      | Data Type     | Description                      |
|------------------|---------------|----------------------------------|
| order_id         | INT           | Unique identifier for orders     |
| order_date       | DATE          | Date when the order was placed   |
| customer_id      | INT           | Identifier for the customer      |
| status           | VARCHAR(20)   | Status of the order              |

### 5. Products Table
| Column Name      | Data Type     | Description                      |
|------------------|---------------|----------------------------------|
| product_id       | INT           | Unique identifier for products   |
| product_name     | VARCHAR(100)  | Name of the product              |
| product_line     | VARCHAR(50)   | Category of the product          |
| price            | DECIMAL(10, 2)| Price of the product             |

### 6. OrderDetails Table
| Column Name      | Data Type     | Description                      |
|------------------|---------------|----------------------------------|
| order_id         | INT           | Identifier for the order         |
| product_id       | INT           | Identifier for the product       |
| quantity         | INT           | Quantity of the product ordered  |
| price_each       | DECIMAL(10, 2)| Price per unit of the product    |

### 7. Payments Table
| Column Name      | Data Type     | Description                      |
|------------------|---------------|----------------------------------|
| payment_id       | INT           | Unique identifier for payments   |
| order_id         | INT           | Identifier for the order         |
| payment_date     | DATE          | Date when the payment was made   |
| amount           | DECIMAL(10, 2)| Amount paid                      |

### 8. ProductLines Table
| Column Name      | Data Type     | Description                      |
|------------------|---------------|----------------------------------|
| product_line     | VARCHAR(50)   | Name of the product line         |
| text_description | TEXT          | Description of the product line  |


## Analysis Process
**1. Data Gathering and Strategy Development**: The data was gathered from the Classic Models database, and key project questions were defined to guide the analysis in alignment with business goals.<br>

**2. Database Preparation in MySQL Workbench**: Using MySQL Workbench, tables were created within the Classic Models database to structure and manage the data for efficient querying.<br>

**3. Query Optimization with CTEs**: Common Table Expressions (CTEs) were applied to calculate specific fields and simplify query structure, improving readability and execution. A main table was then created to consolidate data for the year 2004, joining necessary tables with SQL commands.<br>

**4. Field Calculations**: The following fields were calculated to enable in-depth profitability and cost analysis:<br>

-Net Profit<br>
-Sales Value<br>
-Cost of Sales<br>

**5. Creating Views for Power BI**: A view was created, consolidating the required data into a table named "Sales Data," optimized for use in Power BI.<br>

**6. Data Export for Excel Analysis**: The consolidated table was exported to Excel, where pivot tables were created to further analyze and summarize net profit across product lines and countries.<br>
![Sales Overview 2004 Pivot table](https://github.com/HARGEETKOUR/Sales_Overview_2004/blob/main/Sales_Overview_Pivot_table.png)

**7. Dashboard Development in Power BI**: Using the processed data, an interactive Power BI dashboard was created to present key metrics, profitability, and regional sales trends.<br>

## Dashboard Features<br>
**Slicers**: Slicers are provided for users to filter data by specific time periods, months, and product lines, enabling focused insights based on dynamic selections.<br>

**Navigation**: The dashboard is organized into two pages, with interactive buttons for seamless navigation.<br>

Page 1: Overview of Key Sales Metrics<br>
Page 2: Detailed Profit and Sales Analysis<br>
<br>
**Decomposition Tree**: On the second page, a decomposition tree visualizes net profit by product line, country, and customer. This tree offers a drill-down analysis, allowing users to explore how different dimensions contribute to net profit.<br>

>This dashboard gives Classic Models a robust analytical view of its sales and profitability. Through detailed breakdowns and interactive visuals, it serves as an essential tool for data-driven insights into product performance, customer demographics, and geographic trends.<br>

## Key Visuals Included<br>
**Net Profit vs Product Line**:This graph reveals the net profit of each product line, helping to identify which categories drive profitability.<br>
<br>
**Net Profit vs Cost of Sales**: This visualization compares net profit to the cost of sales, providing insights into cost efficiency and areas for potential cost control.<br>
<br>
**Net Profit vs Office Country**: This chart highlights the contribution of different office locations to overall profitability, allowing for analysis of regional performance.<br>
<br>
**Net Profit vs Customer Country**: Shows net profit distribution across customer countries, helping identify high-value markets.<br>
<br>
**Sales vs Product Line**:Visualizes sales across product lines, identifying popular product categories and revenue drivers.<br>
<br>
**Sales vs Cost of Sales**: Compares sales to cost of sales, offering insights into product-level profitability.<br>
<br>
**Sales vs Office Country**:Illustrates sales by office country, revealing regional sales contributions.<br>
<br>
**Sales vs Customer Country**:Visualizes sales performance across customer countries, aiding in understanding customer distribution and market potential.<br>
<br>
**Sales Overview Table**: Provides a summary view of key metrics, enabling users to quickly assess the sales status and trends for different product lines and regions.<br>

## Sales Overview Dashboard

This repository contains a Power BI dashboard that provides a comprehensive sales overview for Classic Models. The dashboard includes key visualizations such as Net Profit by Product Line, Sales by Country, and Cost vs. Profit Analysis.

## Dashboard Preview
![Page 1](https://github.com/user-attachments/assets/ebc5bb00-620b-4bcc-be0f-65b3f069a4ab)
![Page 2](https://github.com/user-attachments/assets/b4f740d2-a10f-434c-826a-9b67815f1b94)


## Power BI File
Download the `.pbix` file [here](https://github.com/HARGEETKOUR/Sales_Overview_2004/blob/main/Sales_Overview.pbix) to view the full report.


## Key Insights
- **Net Profit by Product Line**: Visualizes product profitability.
- **Sales by Country**: Highlights sales distribution across regions.<br>

## Conclusion
The Sales Overview Dashboard project provides a comprehensive analysis of sales performance for the fictional company Classic Models. By utilizing the Classic Models database and leveraging tools such as SQL, Excel, and Power BI, the project effectively transforms raw data into actionable insights.<br>

The dashboard visualizes key metrics such as net profit, sales trends, and cost analysis across various dimensions, including product lines and geographical locations. Through the use of interactive features like slicers and decomposition trees, users can easily navigate and explore the data, gaining a deeper understanding of business performance.<br>

Overall, this project demonstrates the power of data-driven decision-making, offering valuable insights that can help stakeholders identify growth opportunities, optimize sales strategies, and enhance customer engagement. The methodology employed not only highlights the significance of structured data analysis but also showcases the importance of effective visualization tools in communicating complex information.<br>

Future enhancements could include integrating real-time data updates, additional predictive analytics features, and expanded visualizations to further support strategic business decisions. This project serves as a foundation for ongoing exploration and optimization of sales processes within the organization.<br>







