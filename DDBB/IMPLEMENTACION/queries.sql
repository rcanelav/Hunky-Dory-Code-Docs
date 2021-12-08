

-- Imprimir los posts con sus respuestas

select 
posts.id as idPregunta,
posts.title as tituloPregunta,
posts.content as contenidoPregunta,
(select name from users where users.id = posts.postedBy) as nombreAutorPregunta,
posts_answers.answer_id as idRespuesta,
answers.content as contenidoRespuesta,
answers.user_id as expertId,
(select users.name from users where answers.user_id = users.id) as Experto

from posts 
inner join posts_answers on posts.id = posts_answers.post_id
inner join answers on posts_answers.answer_id = answers.id
inner join users on users.id = answers.user_id;






select * from roles;
select * from users;
select * from technologies;
select * from posts;

select * from answers;

select * from users_posts;

select * from users_answers;

select * from posts_answers;


show tables;
desc roles;
desc users_posts;
desc users_answers;
desc users;
desc posts;