
--
-- CREATE AND USE DDBB
--
DROP DATABASE IF EXISTS hunkyDoryCode;
CREATE DATABASE hunkyDoryCode;
use hunkyDoryCode;

--
-- Table structure for table TECHNOLOGIES
--
CREATE TABLE technologies (
  id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name varchar(255) NOT NULL
);


--
-- Table structure for table USERS
--
CREATE TABLE users (
  id int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name varchar(50) NOT NULL,
  lastname varchar(70) NOT NULL,
  email varchar(45) NOT NULL,
  password varchar(100) DEFAULT NULL,
  image varchar(255) DEFAULT NULL,
  linkedin varchar(50) DEFAULT NULL,
  google tinyint(1) DEFAULT '0',
  technologies int(11) DEFAULT NULL,
  verificationCode varchar(64) DEFAULT NULL,
  createdAt date DEFAULT NULL,
  updatedAt date DEFAULT NULL,
  verifiedAt date DEFAULT NULL,
  role enum('STUDENT','EXPERT','ADMIN') NOT NULL DEFAULT 'STUDENT',
  lastAuthUpdate datetime DEFAULT NULL,
  FOREIGN KEY (technologies) REFERENCES technologies (id)
);


--
-- Table structure for table POSTS
--
CREATE TABLE posts (
  id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  title varchar(80) NOT NULL,
  content text NOT NULL,
  views int(11) NOT NULL DEFAULT '0',
  technology int(11) DEFAULT NULL,
  postedBy int(11) NOT NULL,
  postedAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (postedBy) REFERENCES users (id),
  FOREIGN KEY (technology) REFERENCES technologies (id)
);


--
-- Table structure for table ANSWERS
--
CREATE TABLE answers (
  id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  content text NOT NULL,
  posts_id int(11) DEFAULT NULL,
  createdAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (posts_id) REFERENCES posts (id)
);

--
-- Table structure for table POSTS_LIKES
--
CREATE TABLE posts_likes (
  id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  post_id int(11) NOT NULL,
  user_id int(11) NOT NULL,
  date date DEFAULT NULL,
  FOREIGN KEY (post_id) REFERENCES posts (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);


--
-- Table structure for table ANSWERS_LIKES
--
CREATE TABLE answers_likes (
  id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  answer_id int(11) NOT NULL,
  user_id int(11) NOT NULL,
  date date DEFAULT NULL,
  FOREIGN KEY (answer_id) REFERENCES answers (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);


-------------------------- INSERTS --------------------------


--
-- INSERT USERS DATA
--
INSERT INTO users VALUES 
(1,'John','Hannes','jhonny@test.com','123456',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'STUDENT',NULL),
(2,'Carla','Bolilla','carlabo@test.com','123456',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'STUDENT',NULL),
(3,'Cripto','Nelhams','bolicryp@test.com','123456',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'STUDENT',NULL),
(4,'Bottle','Neck','botneck@test.com','123456',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'STUDENT',NULL),
(5,'Charles','Baudelaire','chabau@test.com','123456',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'STUDENT',NULL),
(6,'Albert','Camus','albertca@test.com','123456',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'STUDENT',NULL),
(7,'Iker','Vyko','vyker@test.com','123456',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'STUDENT',NULL),
(8,'Yisus','de Deus','ohlord@test.com','123456',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'STUDENT',NULL),
(9,'Ramon','Canela','ramon@test.com','123456',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'EXPERT',NULL),
(10,'Francisco','Cobelo','fracisco@test.com','123456',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'EXPERT',NULL),
(11,'Cristina','Ruiz','cris@test.com','123456',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'EXPERT',NULL),
(12,'Paola','A','paola@test.com','123456',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'EXPERT',NULL),
(30,'Kiko','Cobelo','francisco.cobelo@gmail.com','$2a$12$/r3grIvX4.Nox3ZpwKm41e9VGQ4BHCA5DE8GAsuUWvzNHC0uM8OsW','https://graph.facebook.com/10224614139448241/picture',NULL,1,NULL,'pW0WrX9u2n60LfsPmJnXDEtLem4031N5X66OW6Y96Axljq9wfUNI4hbVbNEVZu10','2021-12-15',NULL,NULL,'STUDENT','2021-12-15 12:54:19'),
(40,'Ramón','Canela','rcanelav@gmail.com','$2a$12$1kFyNi88juAsL3g.GhpSeeHoiILolzGfpfMBzyAidbsH2TJQ227W.','https://res.cloudinary.com/rayci/image/upload/v1640100795/islpfy3lgal6dsgytrfe.jpg',NULL,0,NULL,'5zN9jvxe8pKr0PLn7J2xzsEIyousnANZrPB9GhTPvLilAOveINmCr0UodJ7Eeu7O','2021-12-21',NULL,NULL,'EXPERT','2021-12-21 17:12:00');


--
-- INSERT POSTS DATA
--
INSERT INTO posts VALUES 
(1,'Test','Esto es un test1',0,NULL,1,'0000-00-00 00:00:00'),
(2,'Test','Esto es un test2',0,NULL,3,'0000-00-00 00:00:00'),
(3,'Test','Esto es un test3',0,NULL,4,'0000-00-00 00:00:00'),
(4,'Test','Esto es un test4',0,NULL,2,'0000-00-00 00:00:00'),
(5,'Test','Esto es un test5',0,NULL,1,'0000-00-00 00:00:00'),
(6,'Post 1','This is the first post',0,NULL,5,'2021-12-12 16:47:40'),
(7,'Post 2','This is the second post',0,NULL,2,'2021-12-12 16:47:40'),
(8,'Post 3','This is the third post',0,NULL,1,'2021-12-12 16:47:40');


--
-- INSERT ANSWERS DATA
--
INSERT INTO answers VALUES 
(1,'Esto es una respuesta1',1,'0000-00-00 00:00:00'),
(2,'Esto es una respuesta2',3,'0000-00-00 00:00:00'),
(3,'Esto es una respuesta3',2,'0000-00-00 00:00:00');


--
-- INSERT TECHNOLOGIES DATA
--
INSERT INTO technologies VALUES 
(1,'Programming'),
(2,'Java'),
(3,'Javascript'),
(4,'C'),
(5,'C++'),
(6,'C#'),
(7,'GOlang'),
(8,'Ionic'),
(9,'Clean code'),
(10,'Clean architecture'),
(11,'Domain Driven Design'),
(12,'Test Driven Design'),
(13,'Events Driven Design'),
(14,'Hexagonal Architecture'),
(15,'Microservices'),
(16,'NodeJS'),
(17,'React');


---EOF