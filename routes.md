
AUTH

[POST] /api/v1/auth/login           // Login con correo/username

[POST] /api/v1/auth/google          // Login con Google

[POST] /api/v1/auth/facebook        // Login con Facebook

[POST] /api/v1/auth/github          // Login con Github


USERS

LISTA [POST] /api/v1/users/               // Crear usuario

LISTA [POST] /api/v1/users/activation     // Activar usuario

[GET] /api/v1/users/:id                   // Consultar Perfil

[GET] /api/v1/users/                      // Lista de usuarios - CMS *

[PUT] /api/v1/users/:id                   // Actualizar usuario

[DEL] /api/v1/users/:id                   // Eliminar usuario - Propio / CMS

##########################################################################################
                                                                                         #
[GET] /api/v1/users/:id/answers/    // Obtener respuestas realizadas por EXPERTO (OJO)   #
                                                                                         #
[GET] /api/v1/users/:id/posts/    // Obtener preguntas realizadas por USUARIO (OJO)      #
                                                                                         #
##########################################################################################


POSTS 

[GET] /api/v1/posts/                // Principal Obtener Posts / CMS

[POST] /api/v1/posts/               // Crear Post

[GET] /api/v1/posts/:id             // Obtener Post por ID

[PUT] /api/v1/posts/:id             // Actualizar Post

[DEL] /api/v1/posts/:id             // Eliminar Post


---------------> [POST] /api/v1/posts/:id/answers/     // Publicar respuesta

ANSWERS

[PUT] /api/v1/answers/:id           // Obtener respuesta por ID

[DEL] /api/v1/answers/:id           // Eliminar respuesta  / CMS




