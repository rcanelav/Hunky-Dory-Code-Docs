AUTH

 ✅ LISTO [POST] /api/v1/auth/login                     // Login con correo/username

 ✅ LISTO [POST] /api/v1/auth/google                    // Login con Google

 ✅ LISTO[POST] /api/v1/auth/facebook                   // Login con Facebook

USERS

 ✅ LISTO [POST] /api/v1/users/                         // Crear usuario

 ✅ LISTO [POST] /api/v1/users/activation               // Activar usuario

 ✅ LISTO [POST] /api/v1/users/confirmation             //Confirmar cambios de email

 ✅ LISTO [GET] /api/v1/users/:id                       // Consultar Perfil

 ✅  LISTO [GET] /api/v1/users/                         // Lista de usuarios - CMS *

 ✅  LISTO  [PUT] /api/v1/users/:id                     // Actualizar usuario

 ✅  LISTO  [PUT] /api/v1/users/:id/image               // Actualizar imagen de usuario

 ✅  LISTO  [PUT] /api/v1/users/:id/role                // Actualizar role de usuario

[DEL] /api/v1/users/:id                                 // Eliminar usuario - Propio / CMS

[GET] /api/v1/users/:id/answers/                        // Obtener respuestas realizadas por EXPERTO 

[GET] /api/v1/users/:id/posts/                          // Obtener preguntas realizadas por USUARIO 



POSTS

[GET] /api/v1/posts/                                    // Principal Obtener Posts / CMS

[POST] /api/v1/posts/                                   // Crear Post

[GET] /api/v1/posts/:id                                 // Obtener Post por ID

[PUT] /api/v1/posts/:id                                 // Actualizar Post

[DEL] /api/v1/posts/:id                                 // Eliminar Post

[POST] /api/v1/posts/:id/answers/                       // Publicar respuesta


ANSWERS

[PUT] /api/v1/answers/:id                               // Obtener respuesta por ID

[DEL] /api/v1/answers/:id                               // Eliminar respuesta / CMS 