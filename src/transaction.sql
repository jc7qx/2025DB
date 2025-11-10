CREATE TABLE  xTransaction
(
	tNo              CHAR(5)    NOT NULL,
	transMId     CHAR(8)       NOT NULL,
	transTime   DATETIME  NOT NULL,
	method       VARCHAR(5)     NOT NULL,
	bankId        VARCHAR(14),
	bankName VARCHAR(20),
	cardId         VARCHAR(10),
	cardType     VARCHAR(10),
	dueDate      DATE,

	PRIMARY KEY (tNo) ,
	FOREIGN KEY (transMid) REFERENCES Member(mId)
);
