INSERT INTO AGENTS (name_first, name_mi, name_last, title, office_phone, home_phone, hire_date)
    VALUES ('Beau', 'E', 'Robbins', 'Agent', '3124896438', '123789456', '03/05/2010');
    
INSERT INTO AGENTS (name_first, name_mi, name_last, title, office_phone, home_phone, hire_date)
    VALUES ('Shawna', 'C', 'Whitman', 'Senior Agent', '(312)555-5555', '321321321', '08/02/2013');
    
INSERT INTO AGENTS (name_first, name_mi, name_last, title, office_phone, home_phone, hire_date)
    VALUES ('Joe', 'T', 'Mathers', 'Supervisor', '220-231-7894', '123456789', '11/26/2009');
        
INSERT INTO CUSTOMERS (name_first, name_mi, name_last, referrer, employer, date_of_birth, address_street, address_city,
                  address_state, address_zip, cell_phone, home_phone, agent_id)
    VALUES ('Ramona','D', 'Odom','Kay Gamble','Facilisis Non Limited','22/10/1981','Ap #120-5647 Dictum St.',
                'Bremen','NJ','123456','1-356-504-1254','1-928-841-4854', 1);
                
INSERT INTO CUSTOMERS (name_first, name_mi, name_last, referrer, employer, date_of_birth, address_street, address_city,
                  address_state, address_zip, cell_phone, home_phone, agent_id)
    VALUES ('Alexandra','Z','Morse','Danielle David','Sagittis Augue Eu Ltd','28/12/1983','103 Metus. Rd.',
                'Hamburg','FL','16046','1-439-444-2223','1-674-569-3660', 2);
                
INSERT INTO CUSTOMERS (name_first, name_mi, name_last, referrer, employer, date_of_birth, address_street, address_city,
                  address_state, address_zip, cell_phone, home_phone, agent_id)
    VALUES ('Flavia','T','Waters','Joelle Gentry','Elementum Corp.','07/01/1981','P.O. Box 544, 849 Neque. Av.',
                'Bauchi','TX','555555','1-444-696-1621','1-739-429-4957', 3);
  
INSERT INTO HOMES (lot_size, price, address_street, address_city, address_state, address_zip)
    VALUES (100,200000,'747 Renegade Lane','Port Orange','FL','32124');
  
INSERT INTO HOMES (lot_size, price, address_street, address_city, address_state, address_zip)
    VALUES (200,400000,'704 Breckenridge Drive','Port Orange','FL','32127');

INSERT INTO SALES (cust_id, agent_id, home_id, sale_date, sale_amt)
    VALUES (2,2,1,'1/30/2015',190000);
  
INSERT INTO SALES (cust_id, agent_id, home_id, sale_date, sale_amt)
    VALUES (3,1,2,'1/25/2015',412000); 

COMMIT;
                
                