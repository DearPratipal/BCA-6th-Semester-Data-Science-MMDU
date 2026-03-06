SELECT subject,name, marks,
 CASE WHEN marks >= 35 THEN 'Pass' ELSE 'Fail' END AS `Remark`
FROM student;


SELECT st.name,
 st.marks,
 IF(st.marks >= 35, 'Pass', 'Fail') AS `Remark`
FROM student AS st ;


INSERT INTO mmictbm VALUES
(1, 'CSE', 80),
(2, 'ECE', 75),
(3, 'MECH', 60),
(4, 'CSE', 90),
(5, 'ECE', 85);


# Create a query to create a table name as bca602 their multiple time test scroe of student theire mention roll no, name group and test_score)
CREATE TABLE bca602 (
    roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    group_name VARCHAR(20),
    test_score INT
);

# insert randome multiple values in bca602 table
INSERT INTO bca602 VALUES
(1, 'Alice', 'A', 85),
(2, 'Bob', 'B', 78),
(3, 'Charlie', 'A', 92),
(4, 'David', 'B', 88),
(5, 'Eve', 'A', 90),
(1, 'Alice', 'A', 85),
(2, 'Bob', 'B', 78),
(3, 'Charlie', 'A', 92),
(4, 'David', 'B', 88),
(5, 'Eve', 'A', 90),
(1, 'Alice', 'A', 85),
(2, 'Bob', 'B', 78),
(3, 'Charlie', 'A', 92),
(4, 'David', 'B', 88),
(5, 'Eve', 'A', 90),
(1, 'Alice', 'A', 85),
(2, 'Bob', 'B', 78),
(3, 'Charlie', 'A', 92),
(4, 'David', 'B', 88),
(5, 'Eve', 'A', 90);


SELECT s.name, d.dept_name
FROM student s
LEFT JOIN department d
ON s.dept_id = d.dept_id

UNION

SELECT s.name, d.dept_name
FROM student s
RIGHT JOIN department d
ON s.dept_id = d.dept_id;