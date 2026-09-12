-- Online Learning Engagement & Completion Analytics
-- SQL Analysis Queries
-- Database: online_learning_analytics

-- Query 1: Overall Pass & Withdrawal Rate
SELECT
    COUNT(DISTINCT id_student) AS total_students,
    COUNT(DISTINCT CASE WHEN final_result = 'Pass' THEN id_student END) AS passed_students,
    ROUND(
        100.0 * COUNT(DISTINCT CASE WHEN final_result = 'Pass' THEN id_student END)
        / COUNT(DISTINCT id_student),
        2
    ) AS pass_rate,
    COUNT(DISTINCT CASE WHEN final_result = 'Withdrawn' THEN id_student END) AS withdrawn_students,
    ROUND(
        100.0 * COUNT(DISTINCT CASE WHEN final_result = 'Withdrawn' THEN id_student END)
        / COUNT(DISTINCT id_student),
        2
    ) AS withdrawal_rate
FROM student_info;


-- Query 2: Pass Rate by Course
SELECT
    code_module AS course,
    COUNT(*) AS total_enrollments,
    COUNT(CASE WHEN final_result = 'Pass' THEN 1 END) AS passed,
    ROUND(
        100.0 * COUNT(CASE WHEN final_result = 'Pass' THEN 1 END) / COUNT(*),
        2
    ) AS pass_rate
FROM student_info
GROUP BY code_module
ORDER BY pass_rate DESC;


-- Query 3: Engagement by Student Outcome
SELECT
    si.final_result AS student_outcome,
    COUNT(*) AS students_with_engagement,
    ROUND(AVG(se.total_clicks), 2) AS average_total_clicks
FROM student_info si
INNER JOIN student_engagement se
    ON si.code_module = se.code_module
    AND si.code_presentation = se.code_presentation
    AND si.id_student = se.id_student
GROUP BY si.final_result
ORDER BY average_total_clicks DESC;


-- Query 4: Average Engagement by Course
SELECT
    code_module AS course,
    COUNT(*) AS students_with_engagement,
    ROUND(AVG(total_clicks), 2) AS average_total_clicks
FROM student_engagement
GROUP BY code_module
ORDER BY average_total_clicks DESC;


-- Query 5: Average Assessment Score by Assessment Type
SELECT
    a.assessment_type,
    COUNT(*) AS assessment_records,
    ROUND(AVG(sa.score), 2) AS average_score
FROM student_assessment sa
INNER JOIN assessments a
    ON sa.id_assessment = a.id_assessment
WHERE sa.score IS NOT NULL
GROUP BY a.assessment_type
ORDER BY average_score DESC;


-- Query 6: Withdrawal Rate by Course
SELECT
    code_module AS course,
    COUNT(*) AS total_enrollments,
    COUNT(CASE WHEN final_result = 'Withdrawn' THEN 1 END) AS withdrawn,
    ROUND(
        100.0 * COUNT(CASE WHEN final_result = 'Withdrawn' THEN 1 END) / COUNT(*),
        2
    ) AS withdrawal_rate
FROM student_info
GROUP BY code_module
ORDER BY withdrawal_rate DESC;


-- Query 7: High vs Low Engagement and Pass Rate

SELECT
    CASE
        WHEN se.total_clicks >= (
            SELECT AVG(total_clicks)
            FROM student_engagement
        )
        THEN 'High Engagement'
        ELSE 'Low Engagement'
    END AS engagement_group,

    COUNT(*) AS enrollment_records,

    ROUND(AVG(se.total_clicks), 2) AS average_clicks,

    ROUND(
        100.0 * COUNT(
            CASE WHEN si.final_result = 'Pass' THEN 1 END
        ) / COUNT(*),
        2
    ) AS pass_rate

FROM student_engagement se

INNER JOIN student_info si
    ON se.code_module = si.code_module
    AND se.code_presentation = si.code_presentation
    AND se.id_student = si.id_student

GROUP BY
    CASE
        WHEN se.total_clicks >= (
            SELECT AVG(total_clicks)
            FROM student_engagement
        )
        THEN 'High Engagement'
        ELSE 'Low Engagement'
    END

ORDER BY pass_rate DESC;
