ALTER TABLE SCHOOL.TEXTKEY
 DROP PRIMARY KEY CASCADE;

DROP TABLE SCHOOL.TEXTKEY CASCADE CONSTRAINTS;

CREATE TABLE SCHOOL.TEXTKEY
(
  TEXTKEY_ID        NUMBER                      NOT NULL,
  TEXT              VARCHAR2(4000 BYTE)         NOT NULL,
  VALID_FROM       DATE,
  VALID_UNTIL       DATE,
  INSUSER           VARCHAR2(20 BYTE),
  INSDATE           DATE,
  INSPRGM           VARCHAR2(20 BYTE),
  INSVERSION        VARCHAR2(20 BYTE),
  UPDUSER           VARCHAR2(20 BYTE),
  UPDDATE           DATE,
  UPDPRGM           VARCHAR2(20 BYTE),
  UPDVERSION        VARCHAR2(20 BYTE),
  SETSTATUS        VARCHAR2(1 BYTE),
  RELATIONNR        NUMBER(10),
  IDENTIFICATIONMASK  VARCHAR2(100 BYTE)
)
;

ALTER TABLE SCHOOL.TEXTKEY ADD (
  CONSTRAINT TEXTKEY_PK
  PRIMARY KEY
  (TEXTKEY_ID)
  USING INDEX SCHOOL.TEXTKEY_PK
  ENABLE VALIDATE);




