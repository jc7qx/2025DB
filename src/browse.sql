CREATE TABLE Browse
(
      mId       CHAR(8)  NOT NULL DEFAULT  'a0910001',
      pNo       CHAR(6)   NOT NULL,
      browseTime  DATETIME  NOT NULL,     
      
PRIMARY KEY (mId, pNo, browseTime ),
FOREIGN KEY (mId) REFERENCES Member(mId)
ON DELETE SET DEFAULT  ON UPDATE CASCADE ,
FOREIGN KEY (pNo) REFERENCES Product (pNo)

);
