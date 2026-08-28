create database IBM_Analytics_HR
use IBM_Analytics_HR
select * from HR_Analytics


-- overall attrition rate

select avg(Attrition*1.0)*100 as Attrition_Rate
from HR_Analytics

-- attrition by department

select Department, avg(Attrition*1.0)*100 as Dept_Attrition_Rate
from HR_Analytics group by Department


-- attrition by job role

select JobRole, avg(Attrition*1.0)*100 as JobRole_Attrition_Rate
from HR_Analytics group by JobRole

-- attrition by overtime
 
 select OverTime, avg(Attrition*1.0)*100 as Overtime_Attrition
 from HR_Analytics 
 group by OverTime

--  average monthly income of people left and people stayed by department

select Department,
avg(case when Attrition=1 then MonthlyIncome end) as avg_income_left,
avg(case when Attrition=0 then MonthlyIncome end) as avg_income_stayed
from HR_Analytics
group by Department

-- top 3 job roles with highest iteration rate

select top 3
JobRole, AVG(Attrition*1.0)*100 JobRole_Attrition_rate
from HR_Analytics
group by JobRole
order by JobRole_Attrition_rate desc


-- employees with last promotion greater than average of department promotion

with dept_promotion as (
select EmployeeNumber,Department,YearsSinceLastPromotion,
avg(YearsSinceLastPromotion) over (partition by Department) as avg_dept_promotion
from HR_Analytics
)
select * from dept_promotion 
where YearsSinceLastPromotion > avg_dept_promotion


-- average work life balance and job satisfaction of people of left and stayed

select Attrition,
count(*) as total_employee,
round(avg(WorkLifeBalance),2) as avg_work_life_balance,
round(avg(JobSatisfaction),2) as avg_job_satisfaction
from HR_Analytics
group by Attrition


-- rank employee with each department by monthly income and flag bottom 10%

with ranked_emp as(
select EmployeeNumber, Department, MonthlyIncome,
ntile(10) over (partition by Department order by MonthlyIncome) as income_flag
from HR_Analytics
)
select EmployeeNumber, Department, MonthlyIncome,
case
  when income_flag=1 then 'Flagged'
  else 
  'Normal'
  end as bottom10flag
from ranked_emp


