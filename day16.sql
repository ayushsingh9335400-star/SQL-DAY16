--JOINS--
1.--INNER JOIN--
2.--LEFT JOIN--
3.--RIGHT JOIN--
4.--FULL JOIN--
5.--CROSS JOIN--
6.--SELF JOIN--


CREATE TABLE employee5(
 employee_id INT PRIMARY KEY,
 first_name VARCHAR(20) NOT NULL,
 last_name VARCHAR(20) NOT NULL,
 department_id INT
);

select * from department;
select * from employee5;

INSERT INTO employee5 (employee_id,first_name,last_name,department_id)
VALUES (1,'rahul','shrma',101),
        (2,'priya','mehta',102),
        (3,'ankit','verma',103),
        (4,'simran','kaur',NULL),
        (5,'aman','singh',101);

CREATE TABLE department (
 employee_id INT PRIMARY KEY,
 department_name VARCHAR(50) NOT NULL
);

INSERT INTO department (employee_id,department_name)
values(101,'sales'),
       (102,'marketing'),
	   (103,'it'),
	   (104,'HR');

1.--inner join (comman part)--
SELECT employee5.employee_id,employee5.first_name,employee5.last_name,
       department.employee_id, department.department_name
	   FROM employee5  
	   INNER JOIN 
	   department 
	   ON employee5.department_id=department.employee_id;

2.--left join (left side and right comman part)--

SELECT employee5.employee_id,employee5.first_name,employee5.last_name,
      department.employee_id, department.department_name
	  FROM employee5
	  LEFT JOIN 
	  department
	  ON employee5.department_id = department.employee_id;
	   
3.--right join (right side and left comman part)--
SELECT employee5.employee_id, employee5.first_name,employee5.last_name,
       department.employee_id, department.department_name
	   FROM employee5
	   RIGHT join
	   department 
	   ON employee5.department_id = department.employee_id;

4.--full join (all record) --
SELECT employee5.employee_id, employee5.first_name,employee5.last_name,
       department.employee_id, department.department_name
	   FROM employee5
	   FULL join
	   department 
	   ON employee5.department_id = department.employee_id;

5.--cross join (matching one into one row )--
SELECT employee5.first_name, employee5.last_name, department_name
       FROM employee5
	   CROSS JOIN 
	     department;

6.--self join ()
SELECT 
    e1.first_name AS Employee_name1,
    e2.first_name AS Employee_name2
FROM employee5 e1
JOIN employee5 e2
    ON e1.department_id = e2.department_id 
   AND e1.employee_id != e2.employee_id; 


