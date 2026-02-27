CREATE DATABASE healthcare_project;

USE healthcare_project;
SELECT DATABASE();
SHOW TABLES;
SELECT COUNT(*) FROM heart_cleaned;
SELECT * FROM heart_cleaned LIMIT 5;

SELECT COUNT(*) AS total_patients #TOTAL PATIENTS
FROM heart_cleaned;

SELECT  #Overall disease %
ROUND(SUM(target)*100.0/COUNT(*),2) AS disease_percentage
FROM heart_cleaned;

SELECT  #Disease by gender
sex,
COUNT(*) AS total,
SUM(target) AS diseased,
ROUND(SUM(target)*100.0/COUNT(*),2) AS disease_rate
FROM heart_cleaned
GROUP BY sex;

SELECT  #Disease by age group
age_group,
COUNT(*) AS total,
SUM(target) AS diseased,
ROUND(SUM(target)*100.0/COUNT(*),2) AS disease_rate
FROM heart_cleaned
GROUP BY age_group
ORDER BY disease_rate DESC;

SELECT  #Disease by chest pain
cp,
COUNT(*) AS total,
SUM(target) AS diseased,
ROUND(SUM(target)*100.0/COUNT(*),2) AS disease_rate
FROM heart_cleaned
GROUP BY cp
ORDER BY disease_rate DESC;

SELECT  #Average Cholesterol
target,
ROUND(AVG(chol),2) AS avg_cholesterol
FROM heart_cleaned
GROUP BY target;

SELECT  #Average Resting Blood Pressure
target,
ROUND(AVG(trestbps),2) AS avg_bp
FROM heart_cleaned
GROUP BY target;

SELECT  #Average Maximum Heart Rate
target,
ROUND(AVG(thalach),2) AS avg_max_heart_rate
FROM heart_cleaned
GROUP BY target;

SELECT  #Risk Based on Exercise-Induced Angina
exang,
COUNT(*) AS total,
SUM(target) AS diseased,
ROUND(SUM(target)*100.0/COUNT(*),2) AS disease_rate
FROM heart_cleaned
GROUP BY exang;

SELECT  #High Risk Vessel Count
ca,
ROUND(SUM(target)*100.0/COUNT(*),2) AS disease_rate
FROM heart_cleaned
GROUP BY ca
ORDER BY disease_rate DESC;

SELECT 
cp,
ROUND(SUM(target)*100.0/COUNT(*),2) AS disease_rate
FROM heart_cleaned
GROUP BY cp
ORDER BY disease_rate DESC;