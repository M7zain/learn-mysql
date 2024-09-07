

--show all databases
-- @block

SHOW DATABASES; 

--create a table called users in airbnb database with a primary key called id
-- @block
CREATE TABLE users( 
        id INT PRIMARY KEY AUTO_INCREMENT,
        email VARCHAR(255) NOT NULL UNIQUE,
        bio TEXT ,
        country VARCHAR(2)
); 


--adding data into the users table 
--note: the id is incrementing automatically thanks to the constraint Auto_INCREMENT
-- @block
INSERT INTO users(email, bio , country)
VALUES( 
    'lisevans@gmail.com',
    'I love zain',
    'RU'
);


--instert multiple users at the same time
-- @block 
INSERT INTO users(email, bio, country)
VALUES
    ("email@gmail.com", "this is a test", "US"),
     ("thelord@gmail.com","another test" , "HS"); 

--shows all users in the users table
-- @block 
SELECT * FROM users; 

-- @block 
SELECT email, bio FROM users;

-- @block 
SELECT id , email FROM users
WHERE country = 'RU'
OR email LIKE 'za%';


-- create an index 

-- @block 
CREATE index email_index ON  users(email); 

-- @block 
SELECT email_index FROM users; 


--@block 
CREATE TABLE Rooms(
    id INT Auto_INCREMENT,
    street VARCHAR(255),
    owner_id INT NOT NULL, 
    PRIMARY KEY (id),
    FOREIGN KEY (owner_id) REFERENCES users(id)
); 


--@block 
INSERT INTO Rooms (owner_id, street)
VALUES
    (1 , 'yildirim beyazit'),
    (1,'sultan bag caddesi'),
    (1,'ugur caddesi'); 

--SHOW THE INSERTED DATA
--@block

SELECT * FROM Rooms; 

--DELETE THE ROOMS TABLE
--@block 
DROP TABLE Rooms;
--@block

SELECT * FROM Rooms; 