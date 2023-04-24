USE ROLE ACCOUNTADMIN;
USE DATABASE DS5559_DATA;
USE SCHEMA PUBLIC;


-- this will show us the version for the 3rd party packages our python script leverages:
select * from information_schema.packages where (package_name = 'pandas' and language = 'python');


-- THIS is the procedure, note the first part is straight SQL followed by javascript encircled by $$
-- Place your cursor anywhere in the statement and hit <CTL>-ENTER
-- Aside from the SQL header note the following lines
--    snowflake.createStatement({sqlText: validations[idx].sql_statement}), // this is the snowflake API to LOAD a sql statement.
--                                                                          // and store it in a javascript object
--
--          res = stmt.execute();                                           // This is where we RUN the statement
--
--          row_count = res.getRowCount();                                  // As mentioned in class, one standard used for tests is 'no rows means good'
--                                                                          // so in this case we get the row count...
-- The rest of the javascript is setup and processing.  While this example is a validation, you can do just about any work
--    you want.  As mentioned in class, it is now possible to use python for these procedures too.
CREATE OR REPLACE PROCEDURE udf1()
    RETURNS string
    LANGUAGE PYTHON
    PACKAGES = ('snowflake-snowpark-python','pandas')
    COMMENT = 'python udf'
    HANDLER = 'udf1'
    RUNTIME_VERSION = '3.8'
    EXECUTE AS CALLER
AS
$$
import json
import pandas as pd


def udf1(sess):
  validations = [{
      'name':'_AUDIT_DBT_TESTS_--DbtTestsPassed'
      ,'sql_statement':"SELECT count(*) as FLOWER_COUNT FROM IRIS_DATA"
  }]

  # our JSON dictionary
  return_results = {}

  return_results["validation_failures"] = 0

  return_results["fail_num"] = 0
  return_results["pass_num"] = 0
  return_results["exce_num"] = 0
  return_results["total_num"] = 0
  return_results["fail_queries"] = []
  return_results["exce_queries"] = []
  return_results["pass_names"] = []
  return_results["fail_names"] = []
  return_results["exce_names"] = []
  return_results["exce_err_messages"] = []
  return_results["output_data"] = []

  for validation in validations:
      query = validation["sql_statement"]
      return_results["total_num"] += 1

      try:
          res = sess.sql(query)
          row_count = res.count()
          return_results['output_data'] = str(res.collect())
          
          if row_count == 0:
              return_results["pass_names"].append(validation["name"])
              return_results["pass_num"] += 1
              
          else:
               return_results["fail_queries"].append(validation["sql_statement"])
               return_results["fail_names"].append(validation["name"]);
               return_results["fail_num"] += 1
               return_results["validation_failures"] += 1
               
      except Exception as inst:
      
          return_results["exce_queries"].append(validation["sql_statement"])
          return_results["exce_err_messages"].append(str(inst))
          return_results["exce_names"].append(validation["name"])
          return_results["exce_num"] += 1
          return_results["validation_failures"] += 1



  return json.dumps(return_results, indent = 4) 

$$;

-- You should now see the procedure listed
SHOW PROCEDURES;

-- Call it and you should see the result of the return from javascript
CALL udf1();

-- This should get you the text, run this and click on the last rows value for 'body'
DESCRIBE PROCEDURE udf1();




-- The above should return the following output
-- {
--     "validation_failures": 1,
--     "fail_num": 1,
--     "pass_num": 0,
--     "exce_num": 0,
--     "total_num": 1,
--     "fail_queries": [
--         "SELECT count(*) as FLOWER_COUNT FROM IRIS_DATA"
--     ],
--     "exce_queries": [],
--     "pass_names": [],
--     "fail_names": [
--         "_AUDIT_DBT_TESTS_--DbtTestsPassed"
--     ],
--     "exce_names": [],
--     "exce_err_messages": [],
--     "output_data": "[Row(FLOWER_COUNT=150)]"
-- }
