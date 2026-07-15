-- ============================================================
-- Heart Disease Analysis - Database Setup
-- SmartBridge Tableau Project
-- ============================================================

CREATE DATABASE IF NOT EXISTS heart_disease_db;
USE heart_disease_db;

DROP TABLE IF EXISTS patients;

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    age INT,
    sex VARCHAR(10),
    chest_pain_type VARCHAR(30),
    resting_bp INT,
    cholesterol INT,
    fasting_blood_sugar_high VARCHAR(5),
    resting_ecg VARCHAR(30),
    max_heart_rate INT,
    exercise_angina VARCHAR(5),
    st_depression DECIMAL(3,1),
    st_slope VARCHAR(20),
    num_major_vessels INT,
    thalassemia VARCHAR(30),
    smoking VARCHAR(5),
    alcohol_consumption VARCHAR(5),
    physical_activity VARCHAR(15),
    bmi DECIMAL(4,1),
    diabetic VARCHAR(5),
    stroke_history VARCHAR(5),
    general_health VARCHAR(15),
    race VARCHAR(15),
    region VARCHAR(10),
    heart_disease INT
);

-- Load data (run via LOAD DATA LOCAL INFILE or import wizard in MySQL Workbench)
-- LOAD DATA LOCAL INFILE 'heart_disease_dataset.csv'
-- INTO TABLE patients
-- FIELDS TERMINATED BY ',' ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- ============================================================
-- SQL Operations (for "Perform SQL Operations" milestone)
-- ============================================================

-- 1. Overall heart disease prevalence
SELECT heart_disease, COUNT(*) AS total_patients
FROM patients
GROUP BY heart_disease;

-- 2. Gender vs Heart Disease
SELECT sex, heart_disease, COUNT(*) AS count
FROM patients
GROUP BY sex, heart_disease
ORDER BY sex;

-- 3. Age group vs Heart Disease
SELECT
    CASE
        WHEN age < 40 THEN 'Under 40'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS total,
    SUM(heart_disease) AS disease_cases,
    ROUND(SUM(heart_disease)*100.0/COUNT(*),2) AS disease_pct
FROM patients
GROUP BY age_group
ORDER BY age_group;

-- 4. Diabetic vs Stroke history
SELECT diabetic, stroke_history, COUNT(*) AS count
FROM patients
GROUP BY diabetic, stroke_history;

-- 5. Smoking & Alcohol impact
SELECT smoking, alcohol_consumption,
    ROUND(AVG(heart_disease)*100,2) AS disease_rate_pct
FROM patients
GROUP BY smoking, alcohol_consumption;

-- 6. Region-wise stroke prevalence
SELECT region,
    SUM(CASE WHEN stroke_history='Yes' THEN 1 ELSE 0 END) AS stroke_cases,
    COUNT(*) AS total
FROM patients
GROUP BY region;

-- 7. Race vs Heart Disease
SELECT race, ROUND(AVG(heart_disease)*100,2) AS disease_rate_pct
FROM patients
GROUP BY race
ORDER BY disease_rate_pct DESC;

-- 8. General Health vs Heart Disease
SELECT general_health, ROUND(AVG(heart_disease)*100,2) AS disease_rate_pct
FROM patients
GROUP BY general_health;

-- 9. Physical activity vs Heart Disease
SELECT physical_activity, ROUND(AVG(heart_disease)*100,2) AS disease_rate_pct
FROM patients
GROUP BY physical_activity;

-- 10. Age & BMI vs Diabetic
SELECT
    CASE WHEN bmi < 25 THEN 'Normal' WHEN bmi < 30 THEN 'Overweight' ELSE 'Obese' END AS bmi_category,
    diabetic, COUNT(*) AS count
FROM patients
GROUP BY bmi_category, diabetic;
