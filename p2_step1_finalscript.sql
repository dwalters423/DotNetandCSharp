DROP TABLE SALES;
DROP TABLE CUSTOMERS;
DROP TABLE HOMES;
DROP TABLE AGENTS;
DROP SEQUENCE agent_sequence;
DROP SEQUENCE customer_sequence;
DROP SEQUENCE sale_sequence;
DROP SEQUENCE home_sequence;

CREATE TABLE AGENTS (
  agent_id         int          NOT NULL,
  name_first       VARCHAR(15)  NOT NULL,
  name_mi          VARCHAR(1),
  name_last        VARCHAR(15)  NOT NULL,
  title            VARCHAR(15)  NOT NULL,
  office_phone     VARCHAR(15)  NOT NULL,
  cell_phone       VARCHAR(15),
  home_phone       VARCHAR(15)  NOT NULL,
  hire_date        VARCHAR(15)  NOT NULL,
  CONSTRAINT pk_agent PRIMARY KEY (agent_id)
);

CREATE SEQUENCE agent_sequence
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 999999;

CREATE OR REPLACE TRIGGER agent_trigger
  BEFORE INSERT ON AGENTS
    FOR EACH ROW
      BEGIN
        SELECT agent_sequence.nextval into :new.AGENT_ID FROM DUAL;
      END;
/  

CREATE TABLE CUSTOMERS (
  cust_id          int          NOT NULL,
  name_first       VARCHAR(15)  NOT NULL,
  name_mi          VARCHAR(1),
  name_last        VARCHAR(15)  NOT NULL,
  referrer         VARCHAR(15), 
  employer         VARCHAR(30),
  date_of_birth    VARCHAR(15),
  address_street   VARCHAR(30)  NOT NULL,
  address_city     VARCHAR(15)  NOT NULL,
  address_state    VARCHAR(2)   NOT NULL,
  address_zip      VARCHAR(10)  NOT NULL,
  cell_phone       VARCHAR(15),
  home_phone       VARCHAR(15)  NOT NULL,
  agent_id         int,
  CONSTRAINT fk_agentid FOREIGN KEY (agent_id)
    REFERENCES AGENTS(agent_id) ON DELETE SET NULL,
  CONSTRAINT pk_cust PRIMARY KEY (cust_id)    
);

CREATE SEQUENCE customer_sequence
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 999999;
  
CREATE OR REPLACE TRIGGER customer_trigger
  BEFORE INSERT ON CUSTOMERS
    FOR EACH ROW
      BEGIN
        SELECT customer_sequence.nextval into :new.CUST_ID FROM DUAL;
      END;
/  
CREATE TABLE HOMES (
  home_id          int           NOT NULL,
  lot_size         int           NOT NULL,
  price            int           NOT NULL,
  address_street   VARCHAR(30)   NOT NULL,
  address_city     VARCHAR(15)   NOT NULL,
  address_state    VARCHAR(2)    NOT NULL,
  address_zip      VARCHAR(10)   NOT NULL,  
  CONSTRAINT pk_home PRIMARY KEY (home_id)
);

CREATE SEQUENCE home_sequence
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 999999;
  
CREATE OR REPLACE TRIGGER homes_trigger
  BEFORE INSERT ON HOMES
    FOR EACH ROW
      BEGIN
        SELECT home_sequence.nextval into :new.HOME_ID FROM DUAL;
      END;
/  
  
CREATE TABLE SALES (
  sale_id          int          NOT NULL,
  cust_id          int,
  agent_id         int,
  home_id          int,
  sale_date        VARCHAR(15)  NOT NULL,
  sale_amt         int          NOT NULL,
  CONSTRAINT fk_sale_custid FOREIGN KEY (cust_id)
    REFERENCES CUSTOMERS(cust_id) ON DELETE SET NULL,
  CONSTRAINT fk_sale_agentid FOREIGN KEY (agent_id)
    REFERENCES AGENTS(agent_id) ON DELETE SET NULL,
  CONSTRAINT fk_sale_homeid FOREIGN KEY (home_id)
    REFERENCES HOMES(home_id) ON DELETE SET NULL,
  CONSTRAINT pk_sale PRIMARY KEY (sale_id)    
);

CREATE SEQUENCE sale_sequence
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 999999;
  
CREATE OR REPLACE TRIGGER sales_trigger
  BEFORE INSERT ON SALES
    FOR EACH ROW
      BEGIN
        SELECT sale_sequence.nextval into :new.SALE_ID FROM DUAL;
      END;
/  
  
@p2_step2_insert.sql;