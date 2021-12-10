

-- Imprimir los posts con sus respuestas

select 
posts.id as postId,
posts.content as postContent,
users_posts.user_id as postedBy,
(select name from users where id = users_posts.user_id) as postedByName,
(select count(*) from posts_likes where post_id = posts.id) as likesCount,
answers.id as answerId,
answers.content as answerContent,
users_answers.user_id as answeredById,
(select name from users where id = users_answers.user_id) as answeredByName
from posts
inner join answers on posts.id = answers.posts_id
inner join users_posts on posts.id = users_posts.user_id
inner join users on posts.id = users.id
inner join users_answers on answers.id = users_answers.answer_id
left join posts_likes on posts.id = posts_likes.post_id;




