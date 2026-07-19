# ❤️ Heart Disease Analysis

**A Tableau-powered Business Intelligence project analyzing heart disease risk factors, built individually as part of the SmartBridge APSCHE Data Analytics with Tableau internship program.**

Team ID: `SWUID2026201842` | Student: Bhavana Jasmin | JNTU Kakinada, SRKR Engineering College

---

## 📌 Project Note

This project was originally assigned as a group project. However, all other team members (including the team lead) were inactive and did not register/participate at any stage. **All work in this repository — data collection, database setup, SQL operations, Tableau visualizations, dashboard, story, and web integration — was completed individually by Bhavana Jasmin.**

---

## 🎯 Problem Statement

Heart disease is one of the leading causes of mortality worldwide, driven by lifestyle changes, poor diet, and lack of physical activity. Healthcare providers, policymakers, and individuals need accessible tools to understand risk factors hidden in large-scale patient data. This project uses **Tableau** to transform raw health data into interactive dashboards that support preventive care and better decision-making.

## 🚀 Live Links

| Resource | Link |
|---|---|
| **Tableau Public Dashboard & Story** | [View on Tableau Public](https://public.tableau.com/app/profile/bhavana.jasmin/viz/Heart_Disease_Analysis) |
| **GitHub Repository** | [This Repo](https://github.com/BhavanaJasmin14/Heart_Disease_Analysis) |

## 🛠️ Technology Stack

- **Dataset:** CSV (1,000 patient records, 24 attributes)
- **Database:** SQLite (`heart_disease.db`)
- **Visualization:** Tableau Public
- **Web Integration:** Python Flask (`app.py`)
- **Language:** Python 3.x

## 📊 Project Deliverables

### 1. Data Collection & Extraction
- `heart_disease_dataset.csv` — 1,000 patient records covering demographics (age, sex, race, region), clinical indicators (cholesterol, blood pressure, max heart rate), and lifestyle factors (smoking, alcohol, physical activity, BMI, diabetic and stroke history)
- `heart_disease.db` — SQLite database with the dataset loaded into a `patients` table
- `setup_database.sql` — Schema definition and SQL queries used for analysis (gender/age/region breakdowns, smoking-alcohol impact, race-wise disease rate, etc.)

### 2. Data Preparation
Calculated fields created in Tableau: Age Group (binned), BMI Category, Disease Rate %, Diagnosis Label.

### 3. Data Visualization — 10 Unique Charts
1. Gender vs Heart Disease
2. Age vs Heart Disease
3. Diabetic vs Stroke History
4. Impact of Smoking and Alcohol on Heart Disease
5. Other Diseases (General Health) vs Stroke
6. Race-wise Heart Disease
7. General Health vs Heart Disease
8. Physical Activity vs Heart Disease
9. Age and BMI vs Diabetic (scatter plot)
10. People Suffering from Stroke (pie chart)

### 4. Dashboard
A single responsive dashboard combining all 10 visualizations with interactive filters (Gender, Stroke History, Diabetic, Alcohol Consumption).

### 5. Story
A 6-scene Tableau Story walking through: Gender & Heart Disease → Age vs Heart Disease → Diabetic vs Stroke → Smoking & Alcohol Impact → Physical Activity vs Heart Disease → Full Dashboard Overview.

### 6. Web Integration
`app.py` — A Flask web application that embeds the published Tableau dashboard and story using the Tableau Embedding API v3, providing an alternate way to access the visualizations outside Tableau Public.

**To run locally:**
```bash
pip install flask
python app.py
```
Then open `http://127.0.0.1:5000` in your browser.

### 7. Documentation
Full project documentation following the standard SmartBridge project report format is included as Word documents in this repository:

| File | Description |
|---|---|
| `1_Empathy_Map_Canvas.docx` | User empathy mapping for patient/doctor/policymaker personas |
| `2_Problem_Statements.docx` | Customer problem statement templates |
| `3_Brainstorming.docx` | Idea generation and prioritization |
| `4_Solution_Requirements.docx` | Functional & non-functional requirements |
| `5_Technology_Stack.docx` | Architecture and technology components |
| `6_Proposed_Solution.docx` | Solution overview, novelty, business model |
| `7_Project_Planning.docx` | Sprint planning, story points, velocity |
| `8_Data_Flow_Diagram.docx` | DFD and user stories |
| `9_Solution_Architecture.docx` | 3-tier system architecture |
| `10_Customer_Journey_Map.docx` | Journey maps for doctor and patient personas |
| `11_Final_Report.docx` | Consolidated final project report |

### 8. Project Demonstration
A screen-recorded video walkthrough of the complete solution (dataset → SQL → Tableau visualizations → dashboard → story → Flask web app) is included in this repository.

## 🔑 Key Insights

- Male patients show a higher heart disease rate than female patients
- Disease prevalence increases notably in patients aged 50 and above
- Smoking combined with high alcohol consumption shows the highest disease rate among lifestyle factors
- Low physical activity correlates with higher heart disease incidence compared to high activity levels
- Patients with both diabetes and a stroke history show compounded cardiac risk
- BMI above 30 (obese category) is associated with a higher rate of diabetes

## 📁 Repository Structure

```
Heart_Disease_Analysis/
├── heart_disease_dataset.csv       # Raw dataset (1000 records)
├── heart_disease.db                # SQLite database
├── setup_database.sql              # DB schema + SQL queries
├── app.py                          # Flask web integration
├── 1_Empathy_Map_Canvas.docx
├── 2_Problem_Statements.docx
├── 3_Brainstorming.docx
├── 4_Solution_Requirements.docx
├── 5_Technology_Stack.docx
├── 6_Proposed_Solution.docx
├── 7_Project_Planning.docx
├── 8_Data_Flow_Diagram.docx
├── 9_Solution_Architecture.docx
├── 10_Customer_Journey_Map.docx
├── 11_Final_Report.docx
├── [project demo video].mp4
└── README.md
```

## 👤 Author

**Bhavana Jasmin**
B.Tech AIML, SRKR Engineering College, Bhimavaram — JNTU Kakinada
GitHub: [@BhavanaJasmin14](https://github.com/BhavanaJasmin14)
Tableau Public: [bhavana.jasmin](https://public.tableau.com/app/profile/bhavana.jasmin)

---
*SmartBridge APSCHE Data Analytics with Tableau — Short-Term Virtual Internship Program*
