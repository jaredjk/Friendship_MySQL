SELECT * FROM users;
INSERT INTO users (first_name, last_name) VALUES ('Chris', 'Baker');
INSERT INTO users (first_name, last_name) VALUES ('Diana', 'Smith');
INSERT INTO users (first_name, last_name) VALUES ('James', 'Johnson');
INSERT INTO users (first_name, last_name) VALUES ('Jessica', 'Davidson');
SELECT * FROM users;
SELECT first_name
FROM users;


SELECT * FROM friendships;
INSERT INTO friendships (user_id, friend_id, created_at, updated_at) VALUES ('3','4', NOW(), NOW());







INSERT INTO friendships (user_id, friend_id, created_at, updated_at) VALUES ('4','1', NOW(), NOW());



SELECT users.first_name, users.last_name, user2.first_name AS friend_first_name, user2.last_name AS friend_last_name
FROM users
LEFT JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS user2 ON friendships.friend_id = user2.id;