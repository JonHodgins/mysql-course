CREATE TABLE users (
    email VARCHAR(255) PRIMARY KEY,
    created_at TIMESTAMP DEFAULT Now()
)   

INSERT INTO users (email)
VALUES ('Katie32@yahoo.com'), ('Tunde@gmail.com');