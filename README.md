# Sales ETL pipeline and Analysis
End-to-end data analytics: Cleaned Kaggle sales data with Pandas, loaded to PostgreSQL via SQLAlchemy, and analyzed with SQL.
## Project Overview

This project demonstrates an end-to-end data analytics pipeline using Python and SQL. I downloaded a sales dataset from Kaggle, performed data cleaning and processing with Pandas, loaded the data into a PostgreSQL database using SQLAlchemy, and conducted in-depth analysis with SQL queries to uncover business insights.

### Objectives
- Clean and preprocess sales data for analysis.
- Build an ETL pipeline to load data into PostgreSQL.
- Analyze sales trends and performance using SQL, including:
  1. Identifying the top-selling product.
  2. Finding the top 5 highest-selling products in each region.
  3. Comparing month-over-month sales growth for 2022 vs. 2023.
  4. Determining the highest sales month for each product category.
  5. Identifying the sub-category with the highest profit growth in 2023 compared to 2022.
 
  ## Dataset
- **Source**: [Kaggle Sales Dataset](orders.csv)

## Tools and Technologies
- **Python**: Pandas for data cleaning, SQLAlchemy for database integration.
- **PostgreSQL**: For storing and querying data.
- **Jupyter Notebook**: For data processing and visualization.
- **SQL**: For data analysis.
- **Libraries**: `pandas`, `sqlalchemy`

  ## Steps Performed
1. **Data Acquisition**: Downloaded the sales dataset from Kaggle.
2. **Data Cleaning**:
   - Handled missing values, duplicates, and inconsistent formats using Pandas.
   - Standardized date formats and categorical variables.
3. **ETL Pipeline**:
   - Used Pandas to transform data into a suitable format.
   - Loaded data into PostgreSQL tables using SQLAlchemy.
4. **Data Analysis**:
   - Wrote SQL queries to answer key business questions (see Objectives).
   - Generated insights on sales trends, regional performance, and profit growth.
