-- INSERT DATA SCRIPT --
-- term
INSERT INTO term (id,is_active) VALUES ("spring2021","TRUE");
INSERT INTO term (id,is_active) VALUES ("summer2021","TRUE");
INSERT INTO term (id,is_active) VALUES ("fall2021","TRUE"); 

-- Instructors
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",1,"Marc","Kazemipour");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",2,"Adam","Tashman");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",3,"Bill","Basener");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",4,"Cait","Dreisbach");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",5,"Eric","Field");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",6,"Eric","Tassone");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",7,"Jason","Williamson");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",8,"Jeffrey","Woo");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("FALSE",9,"Jeremy","Bolton");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",10,"Jon","Kropko");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",11,"Judy","Fox");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",12,"Lei","Xie");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("FALSE",13,"Luis","Felipe Rosado Murillo");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",14,"Marc","Ruggiano");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",15,"Mike","Porter");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",16,"Nada","Basit");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",17,"Panagiotis","Apostolellis");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",18,"Pete","Alonzi");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",19,"Peter","Gedeck");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",20,"Raf","Alvarado");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",21,"Renee","Cummings");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",22,"Rich","Nguyen");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",23,"Sree","Mallikarjun");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",24,"Stephen","Baek");
INSERT INTO instructors (is_active,Id,first_name,last_name) VALUES ("TRUE",25,"Teague","Henry");

-- courses
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds_biz_anaytics",1,"Business Analytics for Data Scientists","Focuses on the application of data science to critical problems and opportunities in business. ","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds_tech_bootcamp",2,"Technical Bootcamp","Bootcamp for new online MSDS students","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds5001",3,"Exploratory Text Analytics","Introduction to text analytics with a focus on long-form documents, such as reviews, news articles, and novels. Focus on unsupervised methods.","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("cs5012",4,"Foundations of Computer Science","A foundation in discrete mathematics, data structures, algorithmic design and implementation, computational complexity, parallel computing, and data integrity.","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds5100",5,"Programming for Data Science","Programming essentials for data science: Python, R, GitHub","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds5110",6,"Big Data Systems","Use Spark for large-scale analytics and machine learning. Basics of AWS cloud tools.","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds6001",7,"Practice and Application of Data Science","Build skills to acquire, clean, analyze, understand, and interpret data","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds6002",8,"Big Data Ethics","Examines the ethical issues arising around big data.","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds6011",9,"Data Science Capstone Project Work I","Data science capstone part 1","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds6013",10,"Data Science Capstone Project Work II","Data science capstone part 2","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds6030",11,"Statistical Learning","Fundamentals of data mining and machine learning within a common statistical framework","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds6040",12,"Bayesian Machine Learning","Build Bayesian models to provide predictions and quantify the uncertainty in these predictions","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds6050",13,"Deep Learning","Deep learning fundamentals and applications","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("sarc5400",14,"Data Visualization","Teaches visual and spatial thinking coupled with visual data tools and interactive web coding to envision information","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("stat6021",15,"Linear Models for Data Science","An introduction to linear statistical models in the context of data science","TRUE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds6003",16,"Practice and Application of Data Science Part 2","Practitioner seminar","FALSE");
INSERT INTO courses (mnemonic,id,course_name,description,is_active) VALUES ("ds6012",17,"Big Data Ethics Part 2","Examines the ethical issues arising around big data.","FALSE");


-- instor_course_assignments
INSERT INTO instructor_course_assignments 
	SET course_name = "Business Analytics for Data Scientists",
		first_name = "Marc", 
        last_name = "Ruggiano",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "MarcRuggiano"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Business Analytics for Data Scientists"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Bayesian Machine Learning",
		first_name = "Bill", 
        last_name = "Basener",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "BillBasener"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Bayesian Machine Learning"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Linear Models for Data Science",
		first_name = "Jeffrey", 
        last_name = "Woo",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "JeffreyWoo"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Linear Models for Data Science"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Foundations of Computer Science",
		first_name = "Jeremy", 
        last_name = "Bolton",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "JeremyBolton"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Foundations of Computer Science"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Science Capstone Project Work I",
		first_name = "Cait", 
        last_name = "Dreisbach",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "CaitDreisbach"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Science Capstone Project Work I"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Programming for Data Science",
		first_name = "Judy", 
        last_name = "Fox",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "JudyFox"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Programming for Data Science"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Technical Bootcamp",
		first_name = "Pete", 
        last_name = "Alonzi",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "PeteAlonzi"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Technical Bootcamp"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Statistical Learning",
		first_name = "Bill", 
        last_name = "Basener",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "BillBasener"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Statistical Learning"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Exploratory Text Analytics",
		first_name = "Sree", 
        last_name = "Mallikarjun",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "SreeMallikarjun"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Exploratory Text Analytics"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Science Capstone Project Work I",
		first_name = "Jeremy", 
        last_name = "Bolton",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "JeremyBolton"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Science Capstone Project Work I"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Science Capstone Project Work I",
		first_name = "Eric", 
        last_name = "Tassone",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "EricTassone"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Science Capstone Project Work I"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Science Capstone Project Work I",
		first_name = "Lei", 
        last_name = "Xie",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "LeiXie"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Science Capstone Project Work I"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Science Capstone Project Work I",
		first_name = "Abbas", 
        last_name = "Kazemipour",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "AbbasKazemipour"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Science Capstone Project Work I"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Big Data Systems",
		first_name = "Adam", 
        last_name = "Tashman",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "AdamTashman"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Big Data Systems"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Practice and Application of Data Science",
		first_name = "Eric", 
        last_name = "Tassone",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "EricTassone"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Practice and Application of Data Science"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Science Capstone Project Work I",
		first_name = "Peter", 
        last_name = "Gedeck",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "PeterGedeck"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Science Capstone Project Work I"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Big Data Ethics",
		first_name = "Renee", 
        last_name = "Cummings",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "ReneeCummings"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Big Data Ethics"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Deep Learning",
		first_name = "Stephen", 
        last_name = "Baek",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "StephenBaek"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Deep Learning"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Science Capstone Project Work II",
		first_name = "Raf", 
        last_name = "Alvarado",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "RafAlvarado"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Science Capstone Project Work II"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Science Capstone Project Work II",
		first_name = "Teague", 
        last_name = "Henry",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "TeagueHenry"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "FALL2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Science Capstone Project Work II"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Big Data Systems",
		first_name = "Adam", 
        last_name = "Tashman",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "AdamTashman"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Big Data Systems"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Practice and Application of Data Science Part 2",
		first_name = "Jason", 
        last_name = "Williamson",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "JasonWilliamson"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Practice and Application of Data Science Part 2"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Linear Models for Data Science",
		first_name = "Jeffrey", 
        last_name = "Woo",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "JeffreyWoo"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Linear Models for Data Science"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Foundations of Computer Science",
		first_name = "Jeremy", 
        last_name = "Bolton",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "JeremyBolton"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Foundations of Computer Science"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Science Capstone Project Work II",
		first_name = "Jon", 
        last_name = "Kropko",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "JonKropko"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Science Capstone Project Work II"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Programming for Data Science",
		first_name = "Nada", 
        last_name = "Basit",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "NadaBasit"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Programming for Data Science"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Technical Bootcamp",
		first_name = "Pete", 
        last_name = "Alonzi",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "PeteAlonzi"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Technical Bootcamp"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Statistical Learning",
		first_name = "Peter", 
        last_name = "Gedeck",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "PeterGedeck"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Statistical Learning"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Practice and Application of Data Science",
		first_name = "Raf", 
        last_name = "Alvarado",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "RafAlvarado"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Practice and Application of Data Science"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Science Capstone Project Work I",
		first_name = "Raf", 
        last_name = "Alvarado",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "RafAlvarado"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Science Capstone Project Work I"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Big Data Ethics",
		first_name = "Renee", 
        last_name = "Cummings",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "ReneeCummings"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Big Data Ethics"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Big Data Ethics Part 2",
		first_name = "Renee", 
        last_name = "Cummings",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "ReneeCummings"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Big Data Ethics Part 2"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Deep Learning",
		first_name = "Rich", 
        last_name = "Nguyen",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "RichNguyen"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Deep Learning"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Exploratory Text Analytics",
		first_name = "Sree", 
        last_name = "Mallikarjun",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "SreeMallikarjun"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Exploratory Text Analytics"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Science Capstone Project Work I",
		first_name = "Teague", 
        last_name = "Henry",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "TeagueHenry"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Science Capstone Project Work I"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Bayesian Machine Learning",
		first_name = "Teague", 
        last_name = "Henry",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "TeagueHenry"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SUMMER2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Bayesian Machine Learning"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Big Data Systems",
		first_name = "Adam", 
        last_name = "Tashman",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "AdamTashman"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Big Data Systems"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Visualization",
		first_name = "Eric", 
        last_name = "Field",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "EricField"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Visualization"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Linear Models for Data Science",
		first_name = "Jeffrey", 
        last_name = "Woo",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "JeffreyWoo"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Linear Models for Data Science"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Foundations of Computer Science",
		first_name = "Panagiotis", 
        last_name = "Apostolellis",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "PanagiotisApostolellis"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Foundations of Computer Science"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Practice and Application of Data Science Part 2",
		first_name = "Jason", 
        last_name = "Williamson",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "JasonWilliamson"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Practice and Application of Data Science Part 2"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Programming for Data Science",
		first_name = "Judy", 
        last_name = "Fox",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "JudyFox"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Programming for Data Science"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Technical Bootcamp",
		first_name = "Pete", 
        last_name = "Alonzi",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "PeteAlonzi"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Technical Bootcamp"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Statistical Learning",
		first_name = "Mike", 
        last_name = "Porter",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "MikePorter"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Statistical Learning"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Practice and Application of Data Science",
		first_name = "Jon", 
        last_name = "Kropko",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "JonKropko"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Practice and Application of Data Science"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Bayesian Machine Learning",
		first_name = "Bill", 
        last_name = "Basener",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "BillBasener"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Bayesian Machine Learning"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Deep Learning",
		first_name = "Rich", 
        last_name = "Nguyen",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "RichNguyen"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Deep Learning"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Big Data Ethics Part 2",
		first_name = "Luis", 
        last_name = "Felipe Rosado Murillo",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "LuisFelipe Rosado Murillo"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Big Data Ethics Part 2"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Science Capstone Project Work II",
		first_name = "Raf", 
        last_name = "Alvarado",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "RafAlvarado"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Science Capstone Project Work II"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Exploratory Text Analytics",
		first_name = "Sree", 
        last_name = "Mallikarjun",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "SreeMallikarjun"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Exploratory Text Analytics"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Data Science Capstone Project Work I",
		first_name = "Jon", 
        last_name = "Kropko",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "JonKropko"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Data Science Capstone Project Work I"
        );


INSERT INTO instructor_course_assignments 
	SET course_name = "Big Data Ethics",
		first_name = "Luis", 
        last_name = "Felipe Rosado Murillo",
        is_active = "True",
        instructors_id = (
			SELECT id
            FROM instructors
            WHERE CONCAT(first_name,last_name) = "LuisFelipe Rosado Murillo"
            ),
		term_id = (
			SELECT id
            FROM term
            WHERE id = "SPRING2021"
        ),
        courses_id = (
			SELECT id 
            FROM courses
            WHERE course_name = "Big Data Ethics"
        );




-- learning objectives
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Research documentation on your own as a first line of action","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Describe the components of a computer","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Explain the scales of computational power and scales of data","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Differentiate between Windows, MacOS ,and Linux operating systems","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Compare Command Line (CLI) and Graphical User Interface (GUI) shells","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Demonstrate installing software to your computer","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Implement important tasks with Linux","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Create a GitHub account for career or personal use","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Use CLI to operate Git software for version control","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Use GUI to operate Github website interface for version control","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Know how to Install R","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Know how to install and launch Rstudio","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Know how to install Anaconda","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Know how to launch Spyder","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 2),"Know how to launch Jupyter Notebook","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 3),"Understand and use language models such as bag of words","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 3),"Understand and use vector space models","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 3),"Understand how to measure similarity between documents","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 3),"Understand how Principal Component Analysis (PCA) works","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 3),"Understand and use topic models such as Latent Dirichlet Allocation (LDA)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 3),"Understand and use word embedding such as glove and word2vec","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 3),"Understand and use sentiment analysis such as VADER","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 3),"Understand and use Naive Bayes classification","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Have a working knowledge of parallel computing and apply this knowledge for improved computing efficiency","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Select, Computationally Assess, and Deploy appropriate and efficient data structures and algorithms to solve Data Science problems","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Define and Use Logic, Data Structures, and Algorithms to Solve Problems ","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Connect, Transform, and Reduce Real-World Problems to Classical Problem Frameworks to make use of existing, efficient algorithmic solutions","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Independently Explore advanced or supplementary topics to attain a deeper and complimentary understanding of topics","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Reflect on peer-feedback, instructor-feedback, experiences, and lessons-learned related to the use of data structures and algorithms to make continual improvements and updates to methodologies applied ","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Have a working knowledge of the Algorithm Complexity Class Hierarchy in order to gain perspective of the scope of the field and its contextual application to Data Science ","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Design and understand regular expressions for pattern matching","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Understand the important considerations for proper database design","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Basic Dataframe operations (Python and R)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Clone a repo on GitHub","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Confidently work in an appropriate programming environment (IDE)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Confidently write a class and call its methods to simulate a scenario","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Confidently write and call functions in both Python and R","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Correctly pass parameters and retrieve function output(s)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Data structures (e.g., sequences and collections: set, list, dict, tuple)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Demonstrate how methods are inherited from base classes","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Essential primitives (e.g., bool, int, float)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Find and utilize resources including online documentation","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"I/O: at least three different formats, including csv, txt, JSON","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Identify and utilize primitive data types and data structures [Built in]","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Import data into a Pandas Dataframe","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Incorporating some exception handling","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"NumPy, Pandas (essentials)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Patch/debug broken code","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Patch/debug code using in-line testing and unit testing (advanced)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Perform sensitivity analysis on functions (e.g., changing inputs and measuring impact on outputs)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Perform simple mathematical calculations (Python and R)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"R: Apply the Tidyverse Pipe operator to aggregate data","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"R: Apply the Tidyverse verbs, such as: select(), filter(), arrange(), mutate(), summarize()","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"R: data types","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"R: Demonstrate use of element-wise operations","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"R: essential built-in functions like head(), tail(), rbind(), table(), summary(), str()","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"R: get started in RStudio and navigate around","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"R: save code in an R script","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"R: vectorization","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Read and Write to and from various data formats","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Read code on GitHub","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Select and apply an appropriate data structure based on the problem requirements","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Use a program API to utilize existing functions (e.g. assert statements.)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Using program API to utilize existing functions (e.g. sorting, searching, assert statements, etc.)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Utilize and implement add-on numerical packages to augment existing data structures","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 5),"Write robust code by implementing the basic principles of program testing and debugging","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Execute distributed computing frameworks using MapReduce and Spark ","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Demonstrate knowledge of applications for big data storage, retrieval, processing, and modeling using Amazon AWS, Hive, and others from the Hadoop ecosystem ","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Implement PySpark for prevalent data science tasks, including data analysis and machine learning","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Execute an end-to-end predictive modeling project using a large dataset","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Delineate Spark basic architecture and functionality.","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Apply RDDs and Pair RDDs in data analysis tasks","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Apply DataFrames in data analysis tasks","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Apply Spark SQL to data analysis tasks","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Demonstrate how to preprocess data in PySpark","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Identify the basics of the MLlib library in PySpark","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Implement classification models in MLlib","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Identify the statistics functionality in MLlib","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Implement regression models in MLlib","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Examine the alternating least squares algorithm","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Implement recommender systems in PySpark using collaborative filtering","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Execute the feature utilities package in ML","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Construct machine learning pipelines","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Apply dimension reduction techniques using PySpark","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Execute model selection and tuning in PySpark","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Distinguish the use and benefits of accumulators and broadcast variables","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Build machine learning tools for the supervised learning task","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Use hyperparameter tuning in Spark","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Understand the concepts behind HDFS","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Understand the concepts behind Hive.","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Have some familiarity with running PySpark in a Databricks notebook","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Understand how EC2 and S3 are used for computing and storage, respectively","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Demonstrate the steps for configuring and launching an AWS EC2 instance","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Understand the capabilities of Amazon Glue and Athena","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Understand the concepts and use cases behind Apache Kafka","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Create and configure an Amazon S3 bucket","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Apply the concepts behind streaming systems","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Execute the Spark Streaming library","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Compute analytics using Spark Streaming","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Explain the properties of data lakes and data lakehouses","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Explain the shortcomings of data lakes, and how data lakehouses address these shortcomings","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Work with Apache Delta lakes to implement their salient features (create, delete, update, conditional update, time travel)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 6),"Implement GraphX and GraphFrames in Spark","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 7),"Recognize how to get help with coding in a way that is accurate and efficient while demonstrating how to be a good citizen in online forums","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 7),"Implement methods for acquiring electronic data in many formats: csv, flat files, json, from APIs, and using web scraping, and loading it into Python","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 7),"Understand the purpose, typology, and language of relational databases","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 7),"Understand the purpose, typology, and language of NoSQL databases","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 7),"Understand how to implement databases Python: SQLite, PostgreSQL, MySQL, MongoDB","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 7),"Understand how to query databases with SQL ","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 7),"Understand how to query databases with the MongoDB query language","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 7),"Employ methods for wrangling, joining, and aggregating data using pandas","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 7),"Understand relationships in data using summary statistics, hypothesis tests, measurement models","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 7),"Understand relationships in data using visualization with matplotlib, seaborn, plotly","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 8),"Identify situations that demand ethical responses involving data science","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 8),"Develop the skills to respond creatively to critical ethics issues in data science","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 16),"Build knowledge about the education and training needed for a particular job, career path, and entry into the data science profession","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 16),"Observe, receive information, and ask questions to acquire knowledge and awareness of data science professions","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 16),"Relate academics with the world of work by connection data science careers to program coursework","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 9),"Collect and manage data to devise solutions to assigned research projects","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 9),"Select, apply, and evaluate models, tools, and methods to address research projects","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 9),"Interpret and assess results and evaluate the limitations of research findings","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 9),"Resolve group work allocation, leadership, and cooperation issues","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 17),"Identify situations that demand ethical responses involving data science","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 17),"Develop the skills to respond creatively to critical ethics issues in data science","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 10),"Collect and manage data to devise solutions to assigned research projects","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 10),"Select, apply, and evaluate models, tools, and methods to address research projects","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 10),"Interpret and assess results and evaluate the limitations of research findings","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 10),"Resolve group work allocation, leadership, and cooperation issues","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 15),"Use regression analysis to answer questions of interest in a wide variety of application environments","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 15),"Determine the most appropriate regression model for a given data set","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 15),"Identify the assumptions and limitations of a given regression model","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 15),"Diagnose and remedy common problems with the regression model found in real data","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 15),"Work with various data structures and primitive data types in the R programming language","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 15),"Process R dataframes into the forms necessary for subsequent analysis including subsetting by rows, columns, condition, changing column names, removing missing values, combining dataframes with vectors","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 15),"Use the appropriate numerical and graphical summaries based on the question of interest and type of data","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 15),"Use the statistical software R for regression analysis","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 15),"State appropriate context-specific conclusions from an analysis","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 15),"Present and discuss orally and in writing, statistical ideas, methods, and results to lay and professional audiences","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 15),"Work in teams to demonstrate the skills of a professional statistician in organizing and managing projects","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 15),"Describe the mathematical framework of regression models","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 15),"Describe the importance of assessing the assumptions and limitations for a given regression model","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Build classification and regression models for a given data set using R statistical software","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Explain the statistical theory used in data mining that affects how each type of model makes predictions","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"For a given data set and model, determine the optimal algorithmic parameters to customize the results of the model based on practical goals","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Evaluate the performance of a model in terms of various factors such as accuracy, computational cost, interpretability, and practical requirements","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Determine the most appropriate algorithm for a given data set based on the needs of the user","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Use visualization techniques to help users understand and interpret the data mining results","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Implement KNN regression and classification models in R","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Build linear and nonlinear regression models in R","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Evaluate bias-variance tradeoff of linear regression method","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Implement LR, LDA, and QDA classification in R","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Implement cross-validation","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Understand the theory behind principal components","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Use principal components transformation to visualize data","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Use regularization (shrinkage, PCA, lasso) to improve regression accuracy","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Build a CART in R and use for both classification and regression","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Build a random forest (RF) for classification and for regression in R","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Use an SVM for classification and regression in R","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Use K-Means clustering to explore new data in R","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 11),"Use hierarchical clustering to create and evaluate clusters in R","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Probability review","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Use the elements of Bayes theorem in problem solving","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Use univariate conjugate priors to analytically obtain the posterior distribution","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Use multivariate conjugate priors to analytically obtain the posterior distribution","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Use non-informative priors to analytically obtain the posterior distribution","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Formulate real problems using the fundamentals of statistical decision theory","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Apply the principles of statistical decision theory to obtain the optimal solutions to classification problems","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Develop approximate solutions when the required assumptions for optimality in classification are not met","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Apply the principles of statistical decision theory to obtain the optimal solutions to regression problems","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Formulate a graphical representation of a joint distribution using nodes to represent conditional probabilities","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Display Bayesian models using graphs","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Represent generative models using graphs","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Apply graphical methods to real problems in text analysis","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Apply simple sampling methods to approximate distributions","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Devise Markov models for real problems with conditional dependence","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Formulate the Markov Chain Monte Carlo (MCMC) approaches to sampling","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Apply MCMC to real and complex problems in Bayesian inference","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Apply MCMC to real and complex problems in classifications.","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Apply MCMC to real and complex problems in regressions","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Use Bayes factors for model selection","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Formulate and use hierarchical models on real problems","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Use information criteria for model selection","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Formulate and use Bayesian model averaging on real problems","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Apply the expectation-maximization (EM) algorithm to problems in unsupervised learning","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Formulate problems with latent variables","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Formulate problems for solution by the EM algorithm","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Use Laplacian approximation to estimate probabilities in complex problems","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Formulate a variational approximation for a Bayesian inference problem","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Apply variational inference to problems with analytic solutions for comparisons of results","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Represent variational inference using the EM algorithm","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Use optimization methods to obtain solutions for variational approximations to real problems","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Apply evaluation methods to assess the performance of optimizations to obtain variational approximations","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Apply Markov random field models to represent problems in Bayesian machine learning","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Formulate Hidden Markov Model (HMM) solution strategies","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Apply HMMs to problems in data science","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Identify the range of applicability of methods from Bayesian machine learning to real problems in data science.","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 12),"Connect the many concepts discussed in the course to provide a foundation for continued learning","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Create an end-to-end machine learning project at scale using open-source libraries such as NumPy, Keras, TensorFlow, and Google Cloud","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Formulate various supervised, unsupervised, and reinforcement learning models","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Apply practical skill sets on designing, deploying, and analyzing deep network architectures on complex real-world problems","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Use NumPy to describe, identify, and process multi-dimensional arrays and matrices.","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Identify the components of linear algebra most relevant to deep learning.","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Summarize numerical concerns for implementations of deep learning algorithms.","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Design a simple architecture of a multilayer perceptron (MLP).","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Understand how to design different activation functions to solve the vanishing/exploding gradient problem","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Formulate several forms of regularization strategies to create a large, deep, regularized model","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Review applications of convolutional neural networks (CNNs)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Study the basics of recurrent neural networks (RNNs)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Explore the shortcomings of basic RNNs and how to alleviate them with long short-term memory (LSTM) cells","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Investigate in-depth how autoencoders work and how to use them for dimensionality reduction and feature extraction","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Interpret hidden latent variables using perturbation and generate new examples","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Explain the training process of adversarial neural networks (GANs), where two neural networks compete against each other, and its difficulties","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Explore various applications of GANs and their recent advances","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Explore the basic components of reinforcement learning (RL) including the Markov decision process (MDP)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Learn to solve for the optimal state-action value by using Q-Learning and Deep Q-Networks (DQNs)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Examine policy gradients (PGs) to directly optimize the policy, as well as a hybrid method called actor critic advantage","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Understand how to deploy models to TF Serving and then scale up to Google Cloud AI Platform","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Deploy models to mobile apps, embedded devices, and web apps","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Understand how adversarial attacks work","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Explore bias in data and algorithms","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 13),"Analyze the issues in uncertainty estimation","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Understand the fundamentals of modern business with an emphasis on stakeholders, value-creation, industries, markets, and competition","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Apply data science tools to the primary business functions in which they may be working: strategy, sales, marketing, finance, operations, human resources and technology","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Understand key data sources, models, metrics, and tools that will be critical to their success during their careers, as they work in or support each of these business areas.","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Apply ethical data science principles to key business functions (e.g., finance, marketing, etc)","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Use critical thinking skills to understand, analyze, or solve business problems","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Communicate effectively in both speech and writing","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Collaborate effectively with peers","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Formulate and ask insightful questions","TRUE");
INSERT INTO learning_objectives (courses_id,text,is_active) VALUES ((SELECT id FROM courses WHERE id = 4),"Engage appropriately with senior executives at an enterprise level","TRUE");