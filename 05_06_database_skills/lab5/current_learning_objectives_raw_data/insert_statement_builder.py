import pandas as pd

df = pd.read_csv("instructor_course_assignments-Table 1.csv")

sql_template = '''
INSERT INTO instructor_course_assignments 
	SET course_name = "{course_name}",
		first_name = "{first_name}", 
        last_name = "{last_name}",
        is_active = "{is_active}",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "{first_name}{last_name}"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "{term_id}"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "{course_name}"
        );
'''

def make_statement(row,template):
    args = dict(row[1])
    return template.format(**args)

if __name__=="__main__":
    for row in df.iterrows():
        print(make_statement(row,sql_template))