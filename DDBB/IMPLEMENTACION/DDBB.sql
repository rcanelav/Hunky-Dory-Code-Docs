drop database if exists hunkyDoryCode;
create database hunkyDoryCode;
use hunkyDoryCode;

create table roles (
    id int auto_increment primary key,
    name varchar(40) not null
);
create table technologies (
    id int auto_increment primary key,
    name varchar(255) not null
);

create table users (
    id int not null auto_increment primary key,
    name varchar(50) not null,
    lastname varchar(70) not null,
    email varchar(45) not null,
    password varchar(12) not null,
    role int not null default 1,
    status enum('INACTIVE', 'PENDING', 'ACTIVE') not null default 'PENDING',
    image varchar(255),
    linkedin varchar(50),
    google BOOLEAN DEFAULT false,
    rate float default 0,
    technologies int,
    createdAt date,
    updatedAt date,
    verificationCode VARCHAR(64),
    verifiedAt date,
    FOREIGN KEY (technologies) REFERENCES technologies(id),
    FOREIGN KEY (role) REFERENCES roles(id)
);


create table posts(
    id int auto_increment primary key unique,
    title varchar(80) not null,
    content text(4000) not null,
    views int not null DEFAULT 0,
    category int not null,
    postedBy int not null,
    likes int default 0,
    dislikes int default 0,
    FOREIGN KEY (postedBy) REFERENCES users(id),
    FOREIGN KEY (category) REFERENCES technologies(id)
);

create table users_posts (
    id int not null auto_increment primary key,
    user_id int not null,
    post_id int not null,
    createdAt date,
    updatedAt date,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (post_id) REFERENCES posts(id)
);

create table answers (
    id int auto_increment primary key,
    content text(4000) not null,
    user_id int not null,
    likes int not null,
    dislikes int not null,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

create table users_answers (
    id int not null auto_increment primary key,
    user_id int not null,
    answer_id int not null,
    createdAt DATE not null,
    updatedAt DATE ,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (answer_id) REFERENCES answers(id)
);

create table posts_answers (
    id int not null AUTO_INCREMENT primary key unique,
    post_id int not null,
    answer_id int not null,
    createdAt date,
    updatedAt DATE,
    FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (answer_id) REFERENCES answers(id)
);

create table posts_likes (
    id int not null AUTO_INCREMENT primary key,
    post_id int not null,
    user_id int not null,
    date DATE,
    FOREIGN key (post_id) REFERENCES posts(id),
    FOREIGN key (user_id) REFERENCES users(id)
);
create table answers_likes (
    id int not null AUTO_INCREMENT primary key,
    answer_id int not null,
    user_id int not null,
    date DATE,
    FOREIGN key (answer_id) REFERENCES answers(id),
    FOREIGN key (user_id) REFERENCES users(id)
);

-- ################### INSERT DATA ###################


-- roles
insert into roles(name) values 
('USER'), ('EXPERT'), ('ADMIN');

-- users
insert into users (name, lastname, email, password) values 
('John', 'Hannes', 'jhonny@test.com', '123456'),
('Carla', 'Bolilla', 'carlabo@test.com', '123456'),
('Cripto', 'Nelhams', 'bolicryp@test.com', '123456'),
('Bottle', 'Neck', 'botneck@test.com', '123456'),
('Charles', 'Baudelaire', 'chabau@test.com', '123456'),
('Albert', 'Camus', 'albertca@test.com', '123456'),
('Iker', 'Vyko', 'vyker@test.com', '123456'),
('Yisus', 'de Deus', 'ohlord@test.com', '123456');


-- EXPERTS
insert into users (name, lastname, email, password, role) values
('Ramon', 'Canela', 'ramon@test.com', '123456', 2),
('Francisco', 'Cobelo', 'fracisco@test.com', '123456', 2),
('Cristina', 'Ruiz', 'cris@test.com', '123456', 2),
('Paola', 'A', 'paola@test.com', '123456', 2);

-- CATEGORIES
insert into technologies ( name ) values
('Programming'), ('Java'), ('Javascript'), ('C'), ('C++'),
('C#'), ('GOlang'), ('Ionic'), ('Clean code'), ('Clean architecture'), ('Domain Driven Design'), ('Test Driven Design'), ('Events Driven Design'), ('Hexagonal Architecture'), ('Microservices'), ('NodeJS'), ('React');

-- posts

insert into posts (title, content, category, postedBy) VALUES
('Test', 'Esto es un test1', 1, 1),
('Test', 'Esto es un test2', 1, 2),
('Test', 'Esto es un test3', 1, 3),
('Test', 'Esto es un test4', 1, 4),
('Test', 'Esto es un test5', 1, 5);

-- answers
insert into answers (content, user_id) VALUES
('Esto es una respuesta1', 6),
('Esto es una respuesta2', 7),
('Esto es una respuesta3', 8);



insert into users_posts (user_id, post_id, createdAt) VALUES
(1, 1, '2018-01-01'),
(2, 2, '2018-01-01'),
(3, 3, '2018-01-01'),
(4, 4, '2018-01-01'),
(5, 5, '2018-01-01');


insert into posts_answers (post_id, answer_id, createdAt) VALUES
(1, 1, '2018-01-01'),
(2, 2, '2018-01-01'),
(3, 3, '2018-01-01');


insert into users_answers (user_id, answer_id, createdAt) VALUES
(9, 1, '2018-01-01'),
(10, 2, '2018-01-01'),
(11, 3, '2018-01-01');

update users
set status = 'ACTIVE';

select * from users;
select * from posts;

select * from users_posts;

select * from users_answers;



show tables;
desc users;
desc posts;
desc users_posts;
desc answers;
desc users_answers;
desc posts_answers;


