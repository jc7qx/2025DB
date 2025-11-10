CREATE TABLE Product
( 	
	pNo         CHAR(6)     NOT NULL,
	pName        VARCHAR(30),
	unitPrice      DECIMAL(10,2),
	category      VARCHAR(20),
	PRIMARY KEY (pNo ),
	CONSTRAINT UnitPrice_Check
	CHECK (unitPrice > 100)
);
