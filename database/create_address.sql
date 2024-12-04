-- Table: bytmasoft.byt_user

-- DROP TABLE bytmasoft.byt_user;

CREATE TABLE bytmasoft.byt_address
(
  address_id integer NOT NULL PRIMARY KEY,
  street 	character varying(50) ,
  city   	character varying(50) NOT NULL,
  country  	character varying(50) NOT NULL,
  zipcode character varying(10),  
  kind character varying(20),  
  hause_number	integer,
  state_of_element character varying(1) NOT NULL,  
  insdate timestamp,
  insuser character varying(20),
  upduser character varying(20), 
  valid_from timestamp,
  valid_until timestamp,
  insprgm character varying(20),
  updprgm character varying(20),
  upddate timestamp,  
  mask_description character varying(100) 
)