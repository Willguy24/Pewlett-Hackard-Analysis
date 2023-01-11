--Create retirement_titles table from employees and titles
SELECT e.emp_no, 
        e.first_name,
        e.last_name,
        t.title,
        t.from_date,
        t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

select * from retirement_titles


-- Remove duplicates from retirement_titles to create unique_titles and filter out those who already left.
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, from_date DESC;

select * from unique_titles

--Employees about to retire
SELECT COUNT(title) count, title
INTO retiring_titles
FROM unique_titles
GROUP BY (title) 
ORDER BY count DESC;

SELECT * from retiring_titles

--Is eligible for mentorship 
SELECT DISTINCT ON (emp_no)
        e.emp_no, 
        e.first_name,
        e.last_name,
        e.birth_date,
        d.from_date,
        d.to_date,
        t.title
INTO mentorship_eligible
FROM employees as e
INNER JOIN dept_emp as d
ON e.emp_no = d.emp_no
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND d.to_date = '9999-01-01'
ORDER BY emp_no;

SELECT * FROM mentorship_eligible