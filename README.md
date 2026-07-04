# Smart Surveillance Incident Analytics

## Overview

**Smart Surveillance Incident Analytics** is a SQL-based data analytics project built on the **Chicago Crime Dataset (2012–2017)**.
The project focuses on analyzing historical crime incidents to uncover patterns related to **crime trends, arrest rates, domestic violence, hotspot locations, and surveillance-based insights**.

Using **MySQL**, this project performs **data cleaning, schema design, relational mapping, and analytical SQL querying** to transform raw crime data into meaningful intelligence that can support **smart surveillance systems and urban safety planning**.

---

## Project Objective

The main objective of this project is to analyze crime data and generate actionable insights that can help in:

* Understanding **crime patterns over time**
* Identifying **high-crime districts and hotspot locations**
* Studying **arrest rate trends**
* Analyzing **domestic violence incidents**
* Supporting **camera placement, patrol planning, and surveillance analytics**
* Demonstrating strong **SQL skills for data analyst / data science projects**

---

## Dataset Information

* **Dataset Name:** Chicago Crime Dataset
* **Time Period:** 2012 to 2017
* **Total Records:** 1.87 lakh+ crime incidents
* **Database Name:** `Surveillance_proj`

The dataset contains crime-related information such as:

* Date and time of incident
* Crime type and description
* Arrest status
* Domestic violence flag
* District, ward, and community area
* FBI crime code
* Latitude and longitude
* Location description

---

## Database Schema

This project uses one main cleaned fact table and supporting lookup tables.

### Main Table

* `clean_db` → stores cleaned crime incident records

### Lookup Tables

* `district_lookup` → district IDs and district names
* `fbi_code_lookup` → FBI crime categories and severity weights
* `primary_type_lookup` → crime type reference information

### Relationships

* `clean_db.District` → `district_lookup.District`
* `clean_db.FBICode` → `fbi_code_lookup.FBICode`
* `clean_db.PrimaryType` → `primary_type_lookup.PrimaryType`

---

## Project Workflow

### 1) Database Creation

* Created a dedicated MySQL database for the project
* Imported the cleaned Chicago crime dataset
* Renamed the main table for clarity

### 2) Data Cleaning & Validation

Performed several preprocessing steps in SQL:

* Renamed tables
* Converted date columns into proper `DATETIME` format
* Modified incorrect data types
* Removed / transformed unnecessary columns
* Checked for null values in important columns
* Checked duplicate case numbers
* Verified date ranges and distinct crime types

### 3) Data Modeling

* Added **foreign key constraints** between the fact table and lookup tables
* Improved relational consistency across district, FBI code, and primary crime type data

### 4) Exploratory & Analytical SQL Queries

Designed analytical queries to answer crime-related business and surveillance questions.

---

## Key Analysis Areas

## A. Crime Trend Over Time

This section studies how crime changes across year, month, day, and time.

### Questions Answered

* What is the total number of crimes per year?
* Is crime increasing or decreasing overall?
* What is the month-wise crime trend?
* Which day of the week records the most crime?
* Which time of day has the highest crime volume?
* What is the year-over-year percentage change in crimes?

### Example Insights

* Crime incidents were highest in **2012** and gradually declined in later years.
* Crime activity was stronger in the **first five months of the year**.
* **Friday** recorded the highest number of crime incidents.
* A large share of crimes occurred during the **night**.

---

## B. Crime Type Analysis

This section focuses on understanding the most common crime categories and their distribution.

### Questions Answered

* What are the top 10 most frequent crime types?
* Which crime types increased or decreased the most between 2012 and 2016?
* What percentage of total crimes does each crime type represent?
* Which crimes occur more often during the day vs night?
* What are the most common crime descriptions?

### Example Insights

* **Theft** was the most common crime type.
* Theft contributed the highest share of total crimes.
* Some violent crimes were relatively more frequent at night.

---

## C. Arrest Rate Analysis

This section analyzes arrest performance across crime categories, years, districts, and time periods.

### Questions Answered

* What is the overall arrest rate?
* What is the arrest rate by crime category?
* How has arrest rate changed year-over-year?
* Does arrest rate differ by day of week?
* Which districts have the highest arrest rates?

### Example Insights

* Around **29%** of total crimes resulted in an arrest.
* Arrest performance varied significantly across crime categories.
* Some districts showed stronger case resolution than others.

---

## D. Domestic Violence Analysis

This section specifically examines domestic-related crimes.

### Questions Answered

* What percentage of total crimes are domestic-related?
* How has domestic violence changed over time?
* What is the arrest rate for domestic vs non-domestic crimes?
* Which crime categories overlap most with domestic incidents?

### Example Insights

* Domestic-related incidents formed a noticeable share of total crimes.
* Domestic crime trends varied across years.
* Domestic crimes showed different arrest patterns compared to non-domestic crimes.

---

## E. Geographic / Hotspot Analysis

This section identifies where crime is concentrated geographically.

### Questions Answered

* Which districts have the highest total crime count?
* Which wards and community areas are the most crime-prone?
* Which block locations report repeat incidents?
* Which location descriptions see the most crime?
* Which district + crime type combinations are most dominant?
* Which districts have the highest severity-weighted crime scores?

### Example Insights

* Crime was concentrated in specific districts such as **Harrison**, **Chicago Lawn**, and **South Chicago**.
* Certain block locations showed very high repeat incident counts.
* Streets, residences, apartments, and sidewalks were common crime locations.

---

## F. Surveillance-Specific / Advanced Insights

This section turns crime analytics into surveillance-oriented intelligence.

### Questions Answered

* Which **district + hour** combination has the highest crime activity?
* For each district, what is the **peak crime hour**?
* Which districts show a rising vs falling crime trend?
* Which blocks are the **most dangerous overall** using frequency + severity?
* Do high-crime areas also have better arrest rates?

### Why This Matters

These insights can support:

* Smart **camera placement**
* Better **patrol allocation**
* Risk-based **monitoring strategies**
* Identification of **under-policed hotspots**

---

## G. Advanced SQL Concepts Used

This project demonstrates practical use of intermediate and advanced SQL concepts, including:

* **Joins** (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`)
* **CTEs (Common Table Expressions)**
* **Window Functions**

  * `LAG()`
  * `ROW_NUMBER()`
  * `DENSE_RANK()`
* **Aggregate Functions**

  * `COUNT()`
  * `SUM()`
  * `ROUND()`
  * `AVG()`
* **CASE WHEN logic**
* **Date & time functions**

  * `YEAR()`
  * `MONTH()`
  * `DAYNAME()`
  * `HOUR()`
  * `STR_TO_DATE()`
* **Foreign key constraints**
* **Data type conversion and schema modification**
* **Trend and percentage calculations**
* **Hotspot ranking and severity scoring**

---

## Sample Business Questions Solved

Some of the key business / analytical questions solved in this project are:

1. Is crime increasing or decreasing over the years?
2. Which months and weekdays show the highest crime activity?
3. What are the top crime categories in the city?
4. Which crime types have the lowest arrest rate?
5. What percentage of crimes are domestic-related?
6. Which districts and blocks are major crime hotspots?
7. Which district-hour combinations are highest risk for surveillance deployment?
8. Do high-crime areas also have better arrest rates?
9. Which blocks combine **high frequency + high severity** and may need priority monitoring?

---

## Tools & Technologies Used

* **MySQL**
* **SQL**
* **Relational Database Design**
* **Crime Data Analytics**
* **Data Cleaning & Transformation**
* **Exploratory Data Analysis using SQL**

---

## Project Highlights

* End-to-end SQL project from **data cleaning to advanced analysis**
* Real-world public safety use case
* Strong focus on **analytical thinking + business insight generation**
* Includes **trend analysis, hotspot detection, arrest analysis, and surveillance recommendations**
* Good project for **Data Analyst / SQL / Business Analyst / Data Science portfolio**

---

## Possible Future Improvements

This project can be extended further by adding:

* **Power BI / Tableau dashboard** for interactive visualization
* **Heatmaps** for district and block-level crime intensity
* **Machine learning model** for crime prediction or anomaly detection
* **Real-time surveillance alert integration**
* **Time-series forecasting** for future crime volume prediction
* **Geospatial mapping** using latitude and longitude

---

## Conclusion

This project shows how SQL can be used not just for querying data, but for solving real analytical problems in the domain of **crime intelligence and smart surveillance**.

By combining **data cleaning, relational modeling, trend analysis, hotspot detection, arrest analysis, and severity-based ranking**, the project transforms raw crime records into useful insights that can support **better surveillance planning and public safety decision-making**.

---

## Author

**Aditi Patil**
Aspiring Data Analyst / Data Science Enthusiast
