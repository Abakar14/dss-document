

CREATE TABLE school.USER_RIGHTS
(
  USER_RIGHTS_ID        int(6) NOT NULL, 
  name                    VARCHAR(60),  
  USER_ID_FK            int(6),
 RIGHTS_ID_FK			   int(6),
 INSDATE                 DATE,
  INSUSER                 VARCHAR(25),
  SATZSTATUS              CHAR(1 ),
  DESCRIPTION             VARCHAR(2000 ),
  IDENTIFICATIONMASK      VARCHAR(100),
  UPDUSER                 VARCHAR(20 ),
  UPDDATE                  DATE,
  INSPRGM                  VARCHAR(20),
  UPDPRGM                  VARCHAR(20),
   CONSTRAINT USER_RIGHTS_PK  PRIMARY KEY (USER_RIGHTS_ID)
  
)ENGINE=InnoDB DEFAULT CHARSET=utf8
;


CREATE TABLE school.communication_seq (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE school.communication (
  `communicationId` int(11) NOT NULL,
  `communicationType` varchar(255) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `lastChanged` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(100) NOT NULL,
  `patientId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`communicationId`),
  KEY `FKdv7n16jnmc1liqvdf9i20p2c0` (`userId`),
  CONSTRAINT `FKdv7n16jnmc1liqvdf9i20p2c0` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE school.address (
  `addressId` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `lastChanged` datetime DEFAULT NULL,
  `street` varchar(100) NOT NULL,
  `zipCode` varchar(10) NOT NULL,
  `patientId0` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`addressId`),
  KEY `FKtcn59c57m420bjjtaskjdqp2r` (`userId`),
  CONSTRAINT `FKtcn59c57m420bjjtaskjdqp2r` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE school.address_seq (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE SCHOOL.TEXTKEY
(
  TEXTKEY_ID        INT(11) NOT NULL,
  CONTENT           VARCHAR(4000)  NOT NULL,
  VALID_FROM        date,
  VALID_UNTIL       date,
  INSUSER           VARCHAR(20),
  INSDATE           DATE,
  INSPRGM           VARCHAR(20),
  INSVERSION        VARCHAR(20 ),
  UPDUSER           VARCHAR(20 ),
  UPDDATE           DATE,
  UPDPRGM           VARCHAR(20 ),
  UPDVERSION        VARCHAR(20 ),
  SETSTATUS        VARCHAR(1 ),
  RELATIONNR        Long,
  IDENTIFICATIONMASK  VARCHAR(100),
  CONSTRAINT TEXTKEY_PK  PRIMARY KEY (TEXTKEY_ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8
;




CREATE TABLE SCHOOL.TEXTKEY
(
  TEXTKEY_ID        INT(11) NOT NULL,
  CONTENT           VARCHAR(4000)  NOT NULL,
  VALID_FROM        date,
  VALID_UNTIL       date,
  INSUSER           VARCHAR(20),
  INSDATE           DATE,
  INSPRGM           VARCHAR(20),
  INSVERSION        VARCHAR(20 ),
  UPDUSER           VARCHAR(20 ),
  UPDDATE           DATE,
  UPDPRGM           VARCHAR(20 ),
  UPDVERSION        VARCHAR(20 ),
  SETSTATUS        VARCHAR(1 ),
  RELATIONNR        Long,
  IDENTIFICATIONMASK  VARCHAR(100),
  CONSTRAINT TEXTKEY_PK  PRIMARY KEY (TEXTKEY_ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8
;



CREATE TABLE SCHOOL.APPLICATION
(
  APPLICATION_ID         INT(11) NOT NULL,
  INSUSER                 VARCHAR(20),
  INSDATE                 DATE,
  INSPRGM                 VARCHAR(20 ),
  INSVERSION              VARCHAR(20 ),
  UPDUSER                 VARCHAR(20 ),
  UPDDATE                 DATE,
  UPDPRGM                 VARCHAR(20 ),
  UPDVERSION              VARCHAR(20 ),
  SETSTATUS              VARCHAR(1 ),
  APP_NAME               VARCHAR(100 ),
   CONSTRAINT APPLICATION_PK  PRIMARY KEY (APPLICATION_ID)
)
;





CREATE TABLE SCHOOL.TEXTKEY_APPLICATION
(
  TEXTKEY_APPLICATION_ID  int(11)       NOT NULL,
  TEXTKEY_ID_FK           long                NOT NULL,
  APPLIKATION_ID_FK       long                 NOT NULL,
  MASK                   VARCHAR(100),
  POSITIONX               long,
  POSITIONY               long,
  IDENTIFICATIONMASK        VARCHAR(100 ),
  INSUSER                 VARCHAR(20),
  INSDATE                 DATE,
  INSPRGM                 VARCHAR(20 ),
  INSVERSION              VARCHAR(20 ),
  UPDUSER                 VARCHAR(20 ),
  UPDDATE                 DATE,
  UPDPRGM                 VARCHAR(20 ),
  UPDVERSION              VARCHAR(20 ),
  SETSTATUS              VARCHAR(1 ),
  SIMPLE_KEY              VARCHAR(100 ),
   CONSTRAINT TEXTKEY_APPLICATION_PK
  PRIMARY KEY
  (TEXTKEY_APPLICATION_ID)
)
;

