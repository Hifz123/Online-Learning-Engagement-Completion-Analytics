# Online Learning Engagement & Completion Analytics

## Project Overview

An end-to-end data analytics project focused on understanding student engagement, assessment performance, and course completion outcomes using the Open University Learning Analytics Dataset (OULAD).

The project investigates how learning activity and assessment performance vary across courses and student outcomes, with the goal of identifying meaningful patterns that can support better learner engagement and course management.

## Business Questions

- What is the overall course pass and withdrawal rate?
- How does student engagement vary across courses?
- Is higher learning engagement associated with better student outcomes?
- How do assessment scores vary across assessment types?
- Which courses show higher or lower pass rates?
- How are student outcomes distributed across the dataset?

## Dataset

**Open University Learning Analytics Dataset (OULAD)**

The dataset contains anonymized information about students, courses, assessments, registrations, and virtual learning environment (VLE) interactions.

Key tables used include:

- `studentInfo`
- `studentRegistration`
- `studentAssessment`
- `assessments`
- `courses`
- `studentVLE`
- `vle`

## Tools & Technologies

- **Excel** — Data cleaning and preparation
- **SQL** — Data querying and analytical analysis
- **Power BI** — Interactive dashboard and visualization
- **ChatGPT** — AI-assisted analytical support and hypothesis generation

## Data Preparation

The data was reviewed and cleaned before analysis.

Key preparation activities included:

- Handling missing values appropriately
- Preserving valid zero assessment scores
- Distinguishing missing registration information from actual unregistration
- Creating analytical keys to connect student-course-presentation records
- Preparing student engagement summaries from VLE activity data
- Establishing relationships between course, assessment, engagement, and student information

Raw data was preserved separately from the cleaned/analytical data.

## Project Workflow

```text
OULAD Dataset
      ↓
Excel Data Cleaning & Preparation
      ↓
SQL Querying & Analysis
      ↓
Engagement & Outcome Analysis
      ↓
Power BI Data Modeling
      ↓
Interactive Dashboard
      ↓
Business Insights & Recommendations
```


## Dashboard

The Power BI dashboard provides an overview of student engagement, assessment performance, course-level pass rates, and enrollment outcomes.

Key KPIs
Total Students: 29K
Pass Rate: 41.27%
Withdrawal Rate: 31.80%
Average Assessment Score: 75.80
Average Total Clicks: 1.36K
Dashboard Analysis

The dashboard includes:

Pass Rate by Course
Average Engagement by Student Outcome
Enrollment Outcome Distribution
Average Engagement by Course
Average Assessment Score by Assessment Type
Key Insights
Pass rates vary considerably across course modules, indicating differences in student outcomes between courses.
Students with stronger engagement levels tend to show more favorable academic outcomes.
Distinction and Pass groups demonstrate substantially higher average engagement than Fail and Withdrawn groups.
Assessment performance varies across assessment types, with CMA assessments showing the highest average score among the three assessment categories.
A significant proportion of enrollment records result in withdrawal, highlighting the importance of understanding learner disengagement.
Course-level engagement averages are relatively similar across modules, while engagement differences between student outcome groups are more pronounced.
Business Recommendations

## Based on the analysis:

Investigate engagement patterns among students associated with withdrawal outcomes.
Encourage consistent learning activity throughout the course rather than relying primarily on last-minute participation.
Examine courses with lower pass rates to identify potential content, assessment, or engagement challenges.
Use assessment performance patterns to identify areas where additional learner support may be useful.
Monitor early engagement behavior as a descriptive indicator for student-support initiatives.

Note: The analysis identifies associations and patterns in the data. It does not predict individual student outcomes using machine learning.

## AI-Assisted Analytics

ChatGPT was used as an analytical assistant to help:

Structure analytical questions
Explore potential hypotheses
Organize validated findings
Formulate business-oriented recommendations

AI was used to support the analytical process, not to generate the underlying metrics.

All numerical results and dashboard metrics were calculated from the underlying dataset using Excel, SQL, and Power BI.

## Project Outcome

This project demonstrates practical experience in:

Data cleaning and preparation
Relational data analysis
SQL querying
Data modeling
KPI development
Interactive dashboard creation
Exploratory and descriptive analytics
Business insight generation
Data-driven recommendations
Responsible AI-assisted analytics

