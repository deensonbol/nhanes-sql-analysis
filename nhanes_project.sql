SELECT d.id, d.age, d.gender, d.race,
       b.bmi, 
       ROUND((bp.sys1 + bp.sys2 + bp.sys3)/3.0,1) AS avg_sys,
       ROUND((bp.dia1 + bp.dia2 + bp.dia3)/3.0,1) AS avg_dia,
       l.triglycerides,
       di.taking_insulin
FROM demographics d
LEFT JOIN bmi b USING(id)
LEFT JOIN bp USING(id)
LEFT JOIN lipids l USING(id)
LEFT JOIN diabetes di USING(id);




SELECT id,
  CASE
    WHEN bmi < 18.5 THEN 'Underweight'
    WHEN bmi < 25 THEN 'Normal'
    WHEN bmi < 30 THEN 'Overweight'
    ELSE 'Obese'
  END AS bmi_category
FROM bmi;

SELECT d.race, d.gender,
       ROUND(AVG((sys1+sys2+sys3)/3.0),1) AS mean_sys
FROM bp
JOIN demographics d USING(id)
GROUP BY d.race, d.gender;



