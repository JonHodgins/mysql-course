-- CREATE DATABASE insta_clone;

-- USE insta_clone;

-- CREATE TABLE users (
--     id INT auto_increment PRIMARY KEY,
--     first_name VARCHAR(30),
--     last_name VARCHAR(30),
--     username VARCHAR(30) UNIQUE NOT NULL,
--     created_at TIMESTAMP DEFAULT Now()
-- );

-- CREATE TABLE photos (
--     id INT auto_increment PRIMARY KEY,
--     image_url VARCHAR(255) NOT NULL,
--     user_id INT NOT NULL,
--     FOREIGN KEY(user_id) REFERENCES users(id),
--     created_at TIMESTAMP DEFAULT Now()
-- );

-- CREATE TABLE comments (
--     id INT auto_increment PRIMARY KEY,
--     comment_text VARCHAR(255) NOT NULL,
--     user_id INT NOT NULL,
--     photo_id INT NOT NULL,
--     created_at TIMESTAMP DEFAULT Now(),
--     FOREIGN KEY(user_id) REFERENCES users(id),
--     FOREIGN KEY(photo_id) REFERENCES photos(id)
-- )

CREATE TABLE likes (
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT Now(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id)
)