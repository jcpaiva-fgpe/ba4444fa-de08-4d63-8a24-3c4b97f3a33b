
CREATE TABLE departments  
    ( department_id    NUMERIC(4) 
                       CONSTRAINT dept_id_pk  
       		          PRIMARY KEY 
    , department_name  VARCHAR(30)  
	               CONSTRAINT dept_name_nn  NOT NULL  
    , manager_id       NUMERIC(6)  
    , location_id      NUMERIC(4) 
    );

