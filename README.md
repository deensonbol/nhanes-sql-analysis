# NHANES SQL Analysis Project

This project recreates a simplified version of the CDC’s National Health and Nutrition Examination Survey (NHANES) database using **SQLite**.  
It includes demographic, body measures, blood pressure, diabetes, and lipid data for a small sample of participants, designed for teaching SQL joins and summary queries.

## Database Structure
- **demographics** — ID, age, gender, race  
- **bmi** — BMI values with measurement date  
- **bp** — Three systolic and diastolic BP readings per participant  
- **diabetes** — Insulin use indicator  
- **lipids** — Triglyceride levels  

## Database Structure

| Table | Description | Key Columns |
|--------|--------------|--------------|
| **demographics** | Participant demographics | `id`, `age`, `gender`, `race` |
| **bmi** | Body Mass Index values and measurement dates | `id`, `bmi`, `meas_date` |
| **bp** | Three systolic and diastolic blood pressure readings per participant | `id`, `sys1–sys3`, `dia1–dia3` |
| **diabetes** | Binary variable for insulin use | `id`, `taking_insulin` |
| **lipids** | Triglyceride measurements | `id`, `triglycerides` |

## Learning Objectives
- Practice SQL table creation and relational design  
- Use **LEFT JOIN** to combine multiple datasets  
- Apply **aggregate functions** (AVG, ROUND) for summary statistics  
- Implement **CASE WHEN** logic for categorical classification  
- Explore small-scale public health data using SQLite

## Tools Used
- **SQLite (via DB Browser)**
- **SQL (DDL, DML, Joins, Aggregations)**
- **NHANES data structure** as reference
