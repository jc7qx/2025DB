CREATE TABLE Member (
mId              CHAR(8)          NOT NULL ,
pId              CHAR(10)        NOT NULL ,
name          VARCHAR(8)   NOT NULL ,
birthday      DATE ,
phone         VARCHAR(10) ,
address      VARCHAR(40) ,
email           VARCHAR(20) ,
introducer   CHAR(8) ,
	
PRIMARY KEY (mId),
UNIQUE (pId),
FOREIGN KEY(introducer) 
REFERENCES Member(mId)
ON DELETE SET NULL ON UPDATE CASCADE 
);
