drop database if exists hunkyCode;
create database hunkyCode;
use hunkyCode;

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
    type int not null default 1,
    status enum('INACTIVE', 'PENDING', 'ACTIVE') not null default 'INACTIVE',
    google BOOLEAN DEFAULT false,
    rate float default 0,
    technologies int,
    FOREIGN KEY (technologies) REFERENCES technologies(id),
    FOREIGN KEY (type) REFERENCES roles(id)
);


create table posts(
    id int auto_increment primary key,
    title varchar(80) not null,
    content text(4000) not null,
    views int not null DEFAULT 0,
    category int not null,
    postedBy int not null,
    FOREIGN KEY (postedBy) REFERENCES users(id),
    FOREIGN KEY (category) REFERENCES technologies(id)
);

create table users_posts (
    id int not null auto_increment primary key,
    user_id int not null,
    post_id int not null,
    date date,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (post_id) REFERENCES posts(id)
);

create table answers (
    id int auto_increment primary key,
    content text(4000) not null,
    user_id int not null,
    post_id int not null,
    likes int not null,
    unlikes int not null,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (post_id) REFERENCES posts(id)
);

create table USER_ANSWERS (
    id int not null auto_increment primary key,
    user_id int not null,
    answer_id int not null,
    date DATE not null,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (answer_id) REFERENCES answers(id)
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
insert into users (name, lastname, email, password, type) values
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
('Test', 'Esto es un test5', 1, 5),
('Test', 'Esto es un test6', 2, 9);


-- answers
insert into answers (content, user_id, post_id) VALUES
('Esto es una respuesta1', 9, 1),
('Esto es una respuesta2', 2, 1),
('Esto es una respuesta3', 3, 1),
('Esto es una respuesta4', 4, 1),
('Esto es una respuesta5', 5, 1),
('Esto es una respuesta6', 6, 1),
('Esto es una respuesta7', 7, 1),
('Esto es una respuesta8', 8, 1),
('Esto es una respuesta9', 9, 1);

