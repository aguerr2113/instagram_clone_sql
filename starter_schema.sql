-- create database gram;
-- 
-- ----------------------------------------------------------
-- USERS
-- create table users (
-- 	id integer auto_increment primary key,
--     username varchar(255) unique not null,
--     created_at timestamp default now()
-- );
-- insert into users (username) values
-- ('BlueTheCat'),
-- ('CharlieBrown'),
-- ('ArtGee');
-- ---------------------------------------------------------------
-- PHOTOS
-- CREATE TABLE photos(
-- id INTEGER AUTO_INCREMENT PRIMARY KEY,
-- image_url VARCHAR(255) NOT NULL,
-- user_id INTEGER NOT NULL,
-- created_at TIMESTAMP DEFAULT NOW(),
-- FOREIGN KEY(user_id) REFERENCES users(id)
-- );

-- insert into photos (image_url,user_id) values
-- ('/alskjdk89',1),
-- ('/alsklkjhjhg',2),
-- ('/aunugjhdsa7877',2);
-- ---------------------------------------------------------------
-- join
-- select photos.image_url, users.username from photos
-- join users
-- 	on photos.user_id = users.id;
-- ---------------------------------------------------------------
-- COMMENTS
-- CREATE TABLE comments(
-- id INTEGER AUTO_INCREMENT PRIMARY KEY,
-- comment_text varchar(255) NOT NULL,
-- user_id INTEGER NOT NULL,
-- photo_id INTEGER NOT NULL,
-- created_at TIMESTAMP DEFAULT NOW(),
-- FOREIGN KEY(user_id) REFERENCES users(id),
-- foreign key(photo_id) references photos(id)
-- );

-- insert into comments(comment_text, user_id, photo_id) values
-- ('Meow!',1,2),
-- ('Amazing shot!',3,2),
-- ('I <3 this!',2,1);
-- ---------------------------------------------------------------
-- LIKES
-- CREATE TABLE likes(
-- user_id INTEGER NOT NULL,
-- photo_id INTEGER NOT NULL,
-- created_at TIMESTAMP DEFAULT NOW(),
-- FOREIGN KEY(user_id) REFERENCES users(id),
-- FOREIGN KEY(photo_id) REFERENCES photos(id),
-- PRIMARY KEY(user_id, photo_id)
-- );
-- insert into likes(user_id,photo_id)VALUES
-- (1,1),
-- (2,1),
-- (1,2),
-- (1,3),
-- (3,1);
-- ---------------------------------------------------------------
-- create table follows(
-- follower_id integer not null,
-- followee_id integer not null,
-- created_at timestamp default now(),
-- foreign key (follower_id) references users(id),
-- foreign key (followee_id) references users(id),
-- primary key (follower_id,followee_id)
-- );
-- insert into follows(follower_id,followee_id) values
-- (1,2),
-- (1,3),
-- (3,1),
-- (2,2)
-- ;
-- select * from follows;
-- ---------------------------------------------------------------
-- CREATE TABLE tags (
--   id INTEGER AUTO_INCREMENT PRIMARY KEY,
--   tag_name VARCHAR(255) UNIQUE,
--   created_at TIMESTAMP DEFAULT NOW()
-- );
-- CREATE TABLE photo_tags (
--     photo_id INTEGER NOT NULL,
--     tag_id INTEGER NOT NULL,
--     FOREIGN KEY(photo_id) REFERENCES photos(id),
--     FOREIGN KEY(tag_id) REFERENCES tags(id),
--     PRIMARY KEY(photo_id, tag_id)
-- );

-- insert into  tags(tag_name) values
-- ('adorable'),
-- ('cool'),
-- ('sweet');

-- insert into photo_tags(photo_id,tag_id) values
-- (1,1),
-- (1,2),
-- (3,2),
-- (2,3);

-- ---------------------------------------------------------------



-- ---------------------------------------------------------------


-- ---------------------------------------------------------------

