-- 1). which courses are currently included in the program?
SELECT mnemonic,
	course_name
FROM courses
WHERE is_active="TRUE";

-- 2). which courses are currently NOT included in the program?
SELECT mnemonic,
	course_name
FROM courses
WHERE is_active="FALSE";

-- 3) which instructors are not employees?
SELECT *
FROM instructors
WHERE is_active="FALSE";

-- 4) how many LOs are there per course?
SELECT a.mnemonic,
	COUNT(DISTINCT(lo.text)) as learning_objective_count 
FROM courses as a
LEFT JOIN learning_objectives as lo
	ON a.id = lo.courses_id
GROUP BY 1;

-- 5) how many LOs are there per course with name?
SELECT a.mnemonic,
	a.course_name,
	COUNT(DISTINCT(lo.text)) as learning_objective_count 
FROM courses as a
LEFT JOIN learning_objectives as lo
	ON a.id = lo.courses_id
GROUP BY 1,2
HAVING COUNT(DISTINCT(lo.text))=0;

-- 6). Which courses include SQL as a learning outcome?
--  Include the learning outcome descriptions, 
-- course mnemonics, and course names in your solution.
SELECT crs.mnemonic,
	crs.course_name,
    lo.text
FROM courses as crs
RIGHT JOIN learning_objectives as lo
    ON lo.courses_id = crs.id
WHERE lo.text LIKE "%SQL%";

-- 7)  Who taught course ds5100 in Summer 2021?
SELECT CONCAT(inst.first_name," ",inst.last_name) as instructor_name
from instructors as inst
WHERE id = (SELECT instructors_id 
			FROM instructor_course_assignments
			WHERE courses_id = (SELECT id as course_id FROM courses where mnemonic="ds5100")
			AND term_id="summer2021");
            
            
-- 8). Which instructors taught in Fall 2021? 
-- Order their names alphabetically, making sure the names are unique.
SELECT DISTINCT(CONCAT(first_name, " ",last_name)) as instructor_name
FROM instructor_course_assignments
WHERE term_id = "fall2021"
ORDER BY 1;

-- 9) (1 PT) How many courses did each instructor teach in each term? 
-- Order your results by term and then instructor.
SELECT term_id
	,CONCAT(first_name, " ",last_name) as instructor
	,COUNT(DISTINCT(courses_id)) as course_count
FROM instructor_course_assignments
GROUP BY 1,2
ORDER BY 1, 2;

-- 10a) (2 PTS) Which courses had more than one instructor for the 
-- same term? Provide the mnemonic and term for each. 
-- Note this occurs in courses with multiple sections.
SELECT roster.term_id,
	roster.course_name,
	crs.mnemonic,
	COUNT(DISTINCT(instructors_id)) as instructor_count
FROM instructor_course_assignments as roster
LEFT JOIN courses as crs
	ON crs.id = roster.courses_id
GROUP BY 1,2,3
HAVING COUNT(DISTINCT(instructors_id))>1;

-- 10b)  For courses with multiple sections,
--  provide the term, course mnemonic, and instructor 
-- name for each. Hint: You can use your result from 
-- 10a in a subquery or WITH clause.
WITH sections AS (
	SELECT roster.term_id,
		roster.courses_id,
		COUNT(DISTINCT(instructors_id)) as instructor_count
	FROM instructor_course_assignments as roster
	LEFT JOIN courses as crs
		ON crs.id = roster.courses_id
	GROUP BY 1,2
	HAVING COUNT(DISTINCT(instructors_id))>1)

SELECT asgn.term_id, 
	courses.mnemonic,
    CONCAT(inst.first_name, " ",inst.last_name) as instructor
FROM instructor_course_assignments as asgn
INNER JOIN sections
	ON asgn.term_id = sections.term_id
    AND asgn.courses_id = sections.courses_id
LEFT JOIN courses
	ON courses.id = asgn.courses_id
LEFT JOIN instructors as inst
	ON asgn.instructors_id = inst.id;
    

