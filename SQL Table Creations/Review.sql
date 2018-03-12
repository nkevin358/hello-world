CREATE TABLE Review(
accountID CHAR(100),
isbn CHAR(100), 
rating INT,
review CHAR(100), 
PRIMARY KEY (accountID, isbn), 
FOREIGN KEY (accountID) REFERENCES Members(accountID) 
ON UPDATE CASCADE
ON DELETE CASCADE,
FOREIGN KEY (isbn) REFERENCES Book(isbn)
ON UPDATE CASCADE
ON DELETE CASCADE
);