AUTH

    ✅ LISTO [POST] /api/v1/auth/login                      // Login con correo

    ✅ LISTO [POST] /api/v1/auth/google                     // Login con Google

    ✅ LISTO [POST] /api/v1/auth/facebook                   // Login con Facebook

USERS

    ✅ LISTO [POST] /api/v1/users/                         // Crear usuario

    ✅ LISTO [POST] /api/v1/users/activation               // Activar usuario

    ✅ LISTO [POST] /api/v1/users/confirmation             //Confirmar cambios de email

    ✅ LISTO [GET] /api/v1/users/:id                       // Consultar Perfil

    ✅ LISTO [GET] /api/v1/users/                          // Lista de usuarios - CMS *

    ✅ LISTO [PUT] /api/v1/users/:id                       // Actualizar usuario

    ✅ LISTO [PUT] /api/v1/users/:id/image                 // Actualizar imagen de usuario

    ✅ LISTO [PUT] /api/v1/users/:id/role                  // Actualizar role de usuario

    ✅ LISTO [DEL] /api/v1/users/:id                       // Eliminar usuario - Propio / CMS

    ✅ LISTO [GET] /api/v1/users/:id/answers/              // Obtener respuestas realizadas por EXPERTO 

    ✅ LISTO [GET] /api/v1/users/:id/posts/                // Obtener preguntas realizadas por USUARIO 

TECHNOLOGIES

    ✅ LISTO [GET] /api/v1/technologies                    //obtener technologies

    ✅ LISTO [GET] /api/v1/technologies/:id                //obtener technology por ID

    ✅ LISTO [POST] /api/v1/technologies                   //Crear technology /CMS

POSTS

    ✅ LISTO [GET] /api/v1/posts/                          // Principal Obtener Posts / CMS

    ✅ LISTO [POST] /api/v1/posts/                         // Crear Post

    ✅ LISTO [GET] /api/v1/posts/:id                       // Obtener Post por ID

    ✅ LISTO [PUT] /api/v1/posts/:id                       // Actualizar Post

    ✅ LISTO [DEL] /api/v1/posts/:id                       // Eliminar Post

    ✅ LISTO [POST] /api/v1/posts/:id/answers/             // Publicar respuesta

ANSWERS

    ✅ LISTO [GET] /api/v1/answers/:id                     // Obtener respuesta por ID

    ✅ LISTO [DEL] /api/v1/answers/:id                     // Eliminar respuesta / CMS 

SEARCH

    ✅ LISTO [GET] /api/v1/search?                         // Buscar por Titulo, Contenido, Fechas, Si tienen respuesta, etc.

RATING 

    ✅ LISTO [GET]  /api/v1/users/:id/rating               // Obtener rating de usuarios.