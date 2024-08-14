-- Table: bytmasoft.byt_user

-- DROP TABLE bytmasoft.byt_user;

CREATE TABLE bytmasoft.byt_user
(
  user_id integer NOT NULL,
  firts_name character varying(50) NOT NULL,
  last_name character varying(100) NOT NULL,
  loginname character varying(20) NOT NULL,
  password character varying(100),
  salt character varying(20),
  gender character varying(10),
  birthday date,
  state character varying(1) NOT NULL,
  insdate date,
  insuser character varying(20),
  user_id_fk integer,
  department_id_fk integer,
  upduser character varying(20),
  password_changed_date date,
  gueltig_von date,
  gueltig_bis date,
  number_of_login integer,
  last_login date,
  insprgm character varying(20),
  updprgm character varying(20),
  upddate date,
  number_of_false_login integer,
  mask_description character varying(100),
  CONSTRAINT serial PRIMARY KEY (user_id),
  CONSTRAINT byt_user_fk FOREIGN KEY (user_id_fk)
      REFERENCES bytmasoft.byt_user (user_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE bytmasoft.byt_user
  OWNER TO postgres;
GRANT ALL ON TABLE bytmasoft.byt_user TO postgres;
GRANT ALL ON TABLE bytmasoft.byt_user TO bytmasoft;
