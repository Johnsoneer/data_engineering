-- ENTITY TABLES
CREATE TABLE IF NOT EXISTS `mydb`.`learning_objectives` (
  `id` INT NOT NULL,
  `text` VARCHAR(300) NULL,
  `is_active` VARCHAR(45) BINARY NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`instructors` (
  `id` INT NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `is_active` VARCHAR(45) BINARY NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`term` (
  `id` VARCHAR(45) NOT NULL DEFAULT 'i.e. fall 2022 or summer 2021',
  `is_active` VARCHAR(45) BINARY NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`students` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `enrollment_date` DATETIME NULL,
  `is_active` VARCHAR(45) BINARY NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`courses` (
  `id` INT NOT NULL,
  `course_name` VARCHAR(45) NOT NULL,
  `nmemonic` VARCHAR(45) NOT NULL,
  `is_active` VARCHAR(45) BINARY NOT NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- BRIDGE TABLES
CREATE TABLE IF NOT EXISTS `mydb`.`bridge_LO_course` (
  `is_active` VARCHAR(45) BINARY NOT NULL,
  `courses_id` INT NOT NULL,
  `learning_objectives_id` INT NOT NULL,
  INDEX `fk_bridge_course_instructor_courses1_idx` (`courses_id` ASC) VISIBLE,
  PRIMARY KEY (`courses_id`, `learning_objectives_id`),
  INDEX `fk_bridge_LO_course_learning_objectives1_idx` (`learning_objectives_id` ASC) VISIBLE,
  CONSTRAINT `fk_bridge_course_instructor_courses10`
    FOREIGN KEY (`courses_id`)
    REFERENCES `mydb`.`courses` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_bridge_LO_course_learning_objectives1`
    FOREIGN KEY (`learning_objectives_id`)
    REFERENCES `mydb`.`learning_objectives` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- FACT TABLES
CREATE TABLE IF NOT EXISTS `mydb`.`fact_course_section_roster` (
  `students_idstudents` INT NOT NULL,
  `courses_id` INT NOT NULL,
  `is_active` VARCHAR(45) BINARY NOT NULL,
  `instructors_id` INT NOT NULL,
  `term_id` VARCHAR(45) NOT NULL,
  `course_section_id` VARCHAR(45) NOT NULL,
  `instructors_2_id` INT NULL,
  INDEX `fk_bridge_course_roster_students1_idx` (`students_idstudents` ASC) VISIBLE,
  PRIMARY KEY (`course_section_id`),
  INDEX `fk_bridge_course_roster_courses1_idx` (`courses_id` ASC) VISIBLE,
  INDEX `fk_fact_course_section_instructors1_idx` (`instructors_id` ASC) VISIBLE,
  INDEX `fk_fact_course_section_roster_term1_idx` (`term_id` ASC) VISIBLE,
  INDEX `fk_fact_course_section_roster_instructors1_idx` (`instructors_2_id` ASC) VISIBLE,
  CONSTRAINT `fk_bridge_course_roster_students1`
    FOREIGN KEY (`students_idstudents`)
    REFERENCES `mydb`.`students` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_bridge_course_roster_courses1`
    FOREIGN KEY (`courses_id`)
    REFERENCES `mydb`.`courses` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fact_course_section_instructors1`
    FOREIGN KEY (`instructors_id`)
    REFERENCES `mydb`.`instructors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fact_course_section_roster_term1`
    FOREIGN KEY (`term_id`)
    REFERENCES `mydb`.`term` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fact_course_section_roster_instructors1`
    FOREIGN KEY (`instructor_2_id`)
    REFERENCES `mydb`.`instructors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

