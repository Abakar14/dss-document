-- Table: bytmasoft.byt_user

-- DROP TABLE bytmasoft.byt_user;

CREATE TABLE bytmasoft.byt_communication
(
  communication_id integer NOT NULL PRIMARY KEY,
  name 	character varying(50) ,
  state_of_element character varying(1) NOT NULL,  
  insdate date,
  insuser character varying(20),
  upduser character varying(20), 
  valid_from date,
  valid_until date,
  insprgm character varying(20),
  updprgm character varying(20),
  upddate date,  
  mask_description character varying(100) 
)