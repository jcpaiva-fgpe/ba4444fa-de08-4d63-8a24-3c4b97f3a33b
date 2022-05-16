CREATE TABLE regions  
    ( region_id      NUMERIC   
                     CONSTRAINT region_id_nn NOT NULL 
    ,                CONSTRAINT reg_id_pk  
                        PRIMARY KEY (region_id) 
    , region_name    VARCHAR(25)   
    );
CREATE TABLE countries   
    ( country_id      CHAR(2)   
                      CONSTRAINT country_id_nn NOT NULL 
    ,                 CONSTRAINT country_c_id_pk   
        	         PRIMARY KEY (country_id) 
    , country_name    VARCHAR(40)   
    , region_id       NUMERIC   
    ,                 CONSTRAINT countr_reg_fk  
        	         FOREIGN KEY (region_id)  
          	         REFERENCES regions (region_id)   
    );

CREATE TABLE departments  
    ( department_id    NUMERIC(4) 
                       CONSTRAINT dept_id_pk  
       		          PRIMARY KEY 
    , department_name  VARCHAR(30)  
	               CONSTRAINT dept_name_nn  NOT NULL  
    , manager_id       NUMERIC(6)  
    , location_id      NUMERIC(4) 
    );

CREATE SEQUENCE departments_seq  
 START WITH     280  
 INCREMENT BY   10  
 MAXVALUE       9990;

INSERT INTO regions VALUES   
        ( 1  
        , 'Europe'   
        );  
  
INSERT INTO regions VALUES   
        ( 2  
        , 'Americas'   
        );  
  
INSERT INTO regions VALUES   
        ( 3  
        , 'Asia'   
        );  
  
INSERT INTO regions VALUES   
        ( 4  
        , 'Middle East and Africa'   
        );  

INSERT INTO countries VALUES   
        ( 'IT'  
        , 'Italy'  
        , 1   
        );  
  
INSERT INTO countries VALUES   
        ( 'JP'  
        , 'Japan'  
	, 3   
        );  
  
INSERT INTO countries VALUES   
        ( 'US'  
        , 'United States of America'  
        , 2   
        );  
  
INSERT INTO countries VALUES   
        ( 'CA'  
        , 'Canada'  
        , 2   
        );  
  
INSERT INTO countries VALUES   
        ( 'CN'  
        , 'China'  
        , 3   
        );  
  
INSERT INTO countries VALUES   
        ( 'IN'  
        , 'India'  
        , 3   
        );  
  
INSERT INTO countries VALUES   
        ( 'AU'  
        , 'Australia'  
        , 3   
        );  
  
INSERT INTO countries VALUES   
        ( 'ZW'  
        , 'Zimbabwe'  
        , 4   
        );  
  
INSERT INTO countries VALUES   
        ( 'SG'  
        , 'Singapore'  
        , 3   
        );  
  
INSERT INTO countries VALUES   
        ( 'UK'  
        , 'United Kingdom'  
        , 1   
        );  
  
INSERT INTO countries VALUES   
        ( 'FR'  
        , 'France'  
        , 1   
        );  
  
INSERT INTO countries VALUES   
        ( 'DE'  
        , 'Germany'  
        , 1   
        );  
  
INSERT INTO countries VALUES   
        ( 'ZM'  
        , 'Zambia'  
        , 4   
        );  
  
INSERT INTO countries VALUES   
        ( 'EG'  
        , 'Egypt'  
        , 4   
        );  
  
INSERT INTO countries VALUES   
        ( 'BR'  
        , 'Brazil'  
        , 2   
        );  
  
INSERT INTO countries VALUES   
        ( 'CH'  
        , 'Switzerland'  
        , 1   
        );  
  
INSERT INTO countries VALUES   
        ( 'NL'  
        , 'Netherlands'  
        , 1   
        );  
  
INSERT INTO countries VALUES   
        ( 'MX'  
        , 'Mexico'  
        , 2   
        );  
  
INSERT INTO countries VALUES   
        ( 'KW'  
        , 'Kuwait'  
        , 4   
        );  
  
INSERT INTO countries VALUES   
        ( 'IL'  
        , 'Israel'  
        , 4   
        );  
  
INSERT INTO countries VALUES   
        ( 'DK'  
        , 'Denmark'  
        , 1   
        );  
  
INSERT INTO countries VALUES   
        ( 'ML'  
        , 'Malaysia'  
        , 3   
        );  
  
INSERT INTO countries VALUES   
        ( 'NG'  
        , 'Nigeria'  
        , 4   
        );  
  
INSERT INTO countries VALUES   
        ( 'AR'  
        , 'Argentina'  
        , 2   
        );  
  
INSERT INTO countries VALUES   
        ( 'BE'  
        , 'Belgium'  
        , 1   
        );  

INSERT INTO departments VALUES   
        ( 10  
        , 'Administration'  
        , 200  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 20  
        , 'Marketing'  
        , 201  
        , 1800  
        );  
                                  
INSERT INTO departments VALUES   
        ( 30  
        , 'Purchasing'  
        , 114  
        , 1700  
	);  
                  
INSERT INTO departments VALUES   
        ( 40  
        , 'Human Resources'  
        , 203  
        , 2400  
        );  
  
INSERT INTO departments VALUES   
        ( 50  
        , 'Shipping'  
        , 121  
        , 1500  
        );  
                  
INSERT INTO departments VALUES   
        ( 60   
        , 'IT'  
        , 103  
        , 1400  
        );  
                  
INSERT INTO departments VALUES   
        ( 70   
        , 'Public Relations'  
        , 204  
        , 2700  
        );  
                  
INSERT INTO departments VALUES   
        ( 80   
        , 'Sales'  
        , 145  
        , 2500  
        );  
                  
INSERT INTO departments VALUES   
        ( 90   
        , 'Executive'  
        , 100  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 100   
        , 'Finance'  
        , 108  
        , 1700  
        );  
                  
INSERT INTO departments VALUES   
        ( 110   
        , 'Accounting'  
        , 205  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 120   
        , 'Treasury'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 130   
        , 'Corporate Tax'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 140   
        , 'Control And Credit'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 150   
        , 'Shareholder Services'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 160   
        , 'Benefits'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 170   
        , 'Manufacturing'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 180   
        , 'Construction'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 190   
        , 'Contracting'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 200   
        , 'Operations'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 210   
        , 'IT Support'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 220   
        , 'NOC'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 230   
        , 'IT Helpdesk'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 240   
        , 'Government Sales'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 250   
        , 'Retail Sales'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 260   
        , 'Recruiting'  
        , NULL  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 270   
        , 'Payroll'  
        , NULL  
        , 1700  
        );  
