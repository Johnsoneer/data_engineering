-- QUESTION OUTPUTS

-- 1
+------------------+------------------------------------------+
| mnemonic         | course_name                              |
+------------------+------------------------------------------+
| ds5559           | Business Analytics for Data Scientists   |
| ds_tech_bootcamp | Technical Bootcamp                       |
| ds5001           | Exploratory Text Analytics               |
| cs5012           | Foundations of Computer Science          |
| ds5100           | Programming for Data Science             |
| ds5110           | Big Data Systems                         |
| ds6001           | Practice and Application of Data Science |
| ds6002           | Big Data Ethics                          |
| ds6011           | Data Science Capstone Project Work I     |
| ds6013           | Data Science Capstone Project Work II    |
| ds6030           | Statistical Learning                     |
| ds6040           | Bayesian Machine Learning                |
| ds6050           | Deep Learning                            |
| sarc5400         | Data Visualization                       |
| stat6021         | Linear Models for Data Science           |
+------------------+------------------------------------------+

-- 2. 
+----------+-------------------------------------------------+
| mnemonic | course_name                                     |
+----------+-------------------------------------------------+
| ds6003   | Practice and Application of Data Science Part 2 |
| ds6012   | Big Data Ethics Part 2                          |
+----------+-------------------------------------------------+


-- 3. 
+----+-----------------------+------------+-------+-----------+
| id | last_name             | first_name | email | is_active |
+----+-----------------------+------------+-------+-----------+
|  9 | Bolton                | Jeremy     | NULL  | FALSE     |
| 13 | Felipe Rosado Murillo | Luis       | NULL  | FALSE     |
+----+-----------------------+------------+-------+-----------+

-- 4. 
+------------------+--------------------------+
| mnemonic         | learning_objective_count |
+------------------+--------------------------+
| cs5012           |                       18 |
| ds_tech_bootcamp |                       15 |
| ds5001           |                        8 |
| ds5100           |                       34 |
| ds5110           |                       37 |
| ds5559           |                        0 |
| ds6001           |                       10 |
| ds6002           |                        2 |
| ds6003           |                        3 |
| ds6011           |                        4 |
| ds6012           |                        2 |
| ds6013           |                        4 |
| ds6030           |                       19 |
| ds6040           |                       37 |
| ds6050           |                       24 |
| sarc5400         |                        0 |
| stat6021         |                       13 |
+------------------+--------------------------+


-- 5. 
+----------+----------------------------------------+--------------------------+
| mnemonic | course_name                            | learning_objective_count |
+----------+----------------------------------------+--------------------------+
| ds5559   | Business Analytics for Data Scientists |                        0 |
| sarc5400 | Data Visualization                     |                        0 |
+----------+----------------------------------------+--------------------------+

-- 6.
+----------+------------------------------------------+----------------------------------------------------------------------------------+
| mnemonic | course_name                              | text                                                                             |
+----------+------------------------------------------+----------------------------------------------------------------------------------+
| ds5110   | Big Data Systems                         | Apply Spark SQL to data analysis tasks                                           |
| ds6001   | Practice and Application of Data Science | Understand the purpose, typology, and language of NoSQL databases                |
| ds6001   | Practice and Application of Data Science | Understand how to implement databases Python: SQLite, PostgreSQL, MySQL, MongoDB |
| ds6001   | Practice and Application of Data Science | Understand how to query databases with SQL                                       |
+----------+------------------------------------------+----------------------------------------------------------------------------------+


-- 7.
+-----------------+
| instructor_name |
+-----------------+
| Nada Basit      |
+-----------------+

-- 8.
+------------------+
| instructor_name  |
+------------------+
| Abbas Kazemipour |
| Adam Tashman     |
| Bill Basener     |
| Cait Dreisbach   |
| Eric Tassone     |
| Jeffrey Woo      |
| Jeremy Bolton    |
| Judy Fox         |
| Lei Xie          |
| Marc Ruggiano    |
| Pete Alonzi      |
| Peter Gedeck     |
| Raf Alvarado     |
| Renee Cummings   |
| Sree Mallikarjun |
| Stephen Baek     |
| Teague Henry     |
+------------------+



-- 9. 
+------------+----------------------------+--------------+
| term_id    | instructor                 | course_count |
+------------+----------------------------+--------------+
| fall2021   | Abbas Kazemipour           |            1 |
| fall2021   | Adam Tashman               |            1 |
| fall2021   | Bill Basener               |            2 |
| fall2021   | Cait Dreisbach             |            1 |
| fall2021   | Eric Tassone               |            2 |
| fall2021   | Jeffrey Woo                |            1 |
| fall2021   | Jeremy Bolton              |            2 |
| fall2021   | Judy Fox                   |            1 |
| fall2021   | Lei Xie                    |            1 |
| fall2021   | Marc Ruggiano              |            1 |
| fall2021   | Pete Alonzi                |            1 |
| fall2021   | Peter Gedeck               |            1 |
| fall2021   | Raf Alvarado               |            1 |
| fall2021   | Renee Cummings             |            1 |
| fall2021   | Sree Mallikarjun           |            1 |
| fall2021   | Stephen Baek               |            1 |
| fall2021   | Teague Henry               |            1 |
| spring2021 | Adam Tashman               |            1 |
| spring2021 | Bill Basener               |            1 |
| spring2021 | Eric Field                 |            1 |
| spring2021 | Jason Williamson           |            1 |
| spring2021 | Jeffrey Woo                |            1 |
| spring2021 | Jon Kropko                 |            2 |
| spring2021 | Judy Fox                   |            1 |
| spring2021 | Luis Felipe Rosado Murillo |            2 |
| spring2021 | Mike Porter                |            1 |
| spring2021 | Panagiotis Apostolellis    |            1 |
| spring2021 | Pete Alonzi                |            1 |
| spring2021 | Raf Alvarado               |            1 |
| spring2021 | Rich Nguyen                |            1 |
| spring2021 | Sree Mallikarjun           |            1 |
| summer2021 | Adam Tashman               |            1 |
| summer2021 | Jason Williamson           |            1 |
| summer2021 | Jeffrey Woo                |            1 |
| summer2021 | Jeremy Bolton              |            1 |
| summer2021 | Jon Kropko                 |            1 |
| summer2021 | Nada Basit                 |            1 |
| summer2021 | Pete Alonzi                |            1 |
| summer2021 | Peter Gedeck               |            1 |
| summer2021 | Raf Alvarado               |            2 |
| summer2021 | Renee Cummings             |            2 |
| summer2021 | Rich Nguyen                |            1 |
| summer2021 | Sree Mallikarjun           |            1 |
| summer2021 | Teague Henry               |            2 |
+------------+----------------------------+--------------+



-- 10a. 
+------------+---------------------------------------+----------+------------------+
| term_id    | course_name                           | mnemonic | instructor_count |
+------------+---------------------------------------+----------+------------------+
| fall2021   | Data Science Capstone Project Work I  | ds6011   |                6 |
| fall2021   | Data Science Capstone Project Work II | ds6013   |                2 |
| summer2021 | Data Science Capstone Project Work I  | ds6011   |                2 |
+------------+---------------------------------------+----------+------------------+


-- 10b. 
+------------+----------+------------------+
| term_id    | mnemonic | instructor       |
+------------+----------+------------------+
| fall2021   | ds6011   | Cait Dreisbach   |
| fall2021   | ds6011   | Jeremy Bolton    |
| fall2021   | ds6011   | Eric Tassone     |
| fall2021   | ds6011   | Lei Xie          |
| fall2021   | ds6011   | Abbas Kazemipour |
| fall2021   | ds6011   | Peter Gedeck     |
| fall2021   | ds6013   | Raf Alvarado     |
| fall2021   | ds6013   | Teague Henry     |
| summer2021 | ds6011   | Raf Alvarado     |
| summer2021 | ds6011   | Teague Henry     |
+------------+----------+------------------+








