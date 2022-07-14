# Recipe API



## Desarrollo

API REST completamente funcional, en la cual se utilizó:
* **Python**
* **Django / Django-REST-Framework**
* **Docker / Docker-Compose**
* **TDD (Test Driven Development)**



## Definición

La API desarrollada te permite crear recetas, con título, precio, tiempos, ingredientes y tags. Se puede pensar como un libro de recetas virtual. A su vez, ésta puede manejar autenticación de usuarios, creación de objetos, filtrado y clasificación de objetos, subir y ver imágenes, y más. El proyecto está configurado con Docker y Docker-Compose. Se buscó orientar el proceso de desarrollo a las mejores prácticas, programando pruebas unitarias, utilizando Django Test Framework, en un proceso de desarrollo dirigido por tests (TDD). 

Toda la lógica de programación está hecha con Python, así también como los tests. Siguiendo las PEP-8 de buenas prácticas. El manejo de carga de archivos multimedia fue realizado con Django, además se utilizó las funcionalidades que proporciona el panel de administración de django.  Se configuró el proyecto para que utilice una base de datos Postgres y se generaron esquemas OpenAPI 3 y documentación para el proyecto con drf-spectacular y Swagger.



## Requerimientos para usar la API

Para empezar a usar la API necesitas instalar lo siguiente:

* *Docker*: para instalar Docker de acuerdo con su sistema operativo, visite el sitio web oficial https://docs.docker.com/get-docker/
* *Docker-Compose*: para instalar Docker-Compose, visite el sitio web oficial https://docs.docker.com/compose/install/



## Quick Start

Debes descargar el repositorio. Luego, en la terminal, sobre la carpeta principal del repositorio folder. Ejecutar los siguientes comandos:


```console
docker-compose up
```

&nbsp;

## Endpoints

La API está documentada con Swagger, y estará disponible en: 
> http://127.0.0.1:8000/api/docs/


#### User endpoints
Nos permite crear, actualizar usuarios, cambiar la contraseña de los usuarios y crear un token de autenticación de usuario que se puede usar para autenticar la solicitud a las otras APIs del proyecto.
#### Recipe endpoints
Nos permite la creación de recetas, el filtrado y clasificación de etiquetas, ingredientes y recetas. También subir y ver imágenes.



**USER**

| Method      | Endpoint        |                 URL                  | Required body  |
|:-----------:|:---------------:|:------------------------------------:|:--------------:|
|     POST     | /api/user/create/    |http://127.0.0.1:8000/api/docs/api/user/create/    |  Only param   |
|     GET     | /api/user/me/     | http://127.0.0.1:8000/api/docs/api/user/me/     |   Yes           |
|     PUT    | /api/user/me/     | http://127.0.0.1:8000/api/docs/api/user/me/    |   Yes          |
|     PATCH     | /api/user/me/     | http://127.0.0.1:8000/api/docs/api/user/me/    |   Yes          |
|     POST  | /api/user/token/ | http://127.0.0.1:8000/api/docs/api/user/token/ |   Yes   |

**RECIPE**

| Method      | Endpoint        |                 URL                  | Required body  |
|:-----------:|:---------------:|:------------------------------------:|:--------------:|
|     GET     | ​/api​/recipe​/ingredients​/    | http://127.0.0.1:8000/api/docs​/api​/recipe​/ingredients​/   |   Yes   |
|     PUT     | /api/recipe/ingredients/{id}/    | http://127.0.0.1:8000/api/docs/api/recipe/ingredients/{id}/    |   Yes           |
|     PATCH     | /api/recipe/ingredients/{id}/    | http://127.0.0.1:8000/api/docs/api/recipe/ingredients/{id}/    |   Yes           |
|     DELETE     | /api/recipe/ingredients/{id}/    | http://127.0.0.1:8000/api/docs/api/recipe/ingredients/{id}/    |   Yes           |
|     GET    | /api/recipe/recipes/     | http://127.0.0.1:8000/api/docs/api/recipe/recipes/    |   Yes          |
|     POST    | /api/recipe/recipes/    | http://127.0.0.1:8000/api/docs/api/recipe/recipes/    |   Yes          |
|     GET     | /api​/recipe​/recipes​/{id}​/     | http://127.0.0.1:8000/api/docs​/api​/recipe​/recipes​/{id}​/    |   Yes          |
|     PUT     | /api​/recipe​/recipes​/{id}​/     | http://127.0.0.1:8000/api/docs​/api​/recipe​/recipes​/{id}​/    |   Yes          |
|     PATCH     | /api​/recipe​/recipes​/{id}​/     | http://127.0.0.1:8000/api/docs​/api​/recipe​/recipes​/{id}​/    |   Yes          |
|     DELETE     | /api​/recipe​/recipes​/{id}​/     | http://127.0.0.1:8000/api/docs​/api​/recipe​/recipes​/{id}​/    |   Yes          |
|     POST  | /api/recipe/recipes/{id}/upload-image/ | http://127.0.0.1:8000/api/docs/api/recipe/recipes/{id}/upload-image/ |   Yes   |
|     GET  | /api​/recipe​/tags​/ | http://127.0.0.1:8000/api/docs​/api​/recipe​/tags​/ |   Yes   |
|     PUT  | ​/api​/recipe​/tags​/{id}​/ | http://127.0.0.1:8000/api/docs​/api​/recipe​/tags​/{id}​/ |   Yes   |
|     PATCH  | ​/api​/recipe​/tags​/{id}​/ | http://127.0.0.1:8000/api/docs​/api​/recipe​/tags​/{id}​/ |   Yes   |
|     DELETE  | ​/api​/recipe​/tags​/{id}​/ | http://127.0.0.1:8000/api/docs​/api​/recipe​/tags​/{id}​/ |   Yes   |


**SCHEMA**

| Method      | Endpoint        |                 URL                  | Required body  |
|:-----------:|:---------------:|:------------------------------------:|:--------------:|
|     GET     | /api/schema/     |http://127.0.0.1:8000/api/docs/api/schema/    |   No   |


**HEALTH-CHECK**

| Method      | Endpoint        |                 URL                  | Required body  |
|:-----------:|:---------------:|:------------------------------------:|:--------------:|
|     GET     | /api/health-check/   |http://127.0.0.1:8000/api/docs/api/health-check/   |   No   |



&nbsp;


## Testing

Para ejecutar la pruebas, debe ubicarse en la carpeta raiz del proyecto y correr lo siguiente en la terminal:

* run  test:
```console
docker-compose run --rm app sh -c "python manage.py test && flake8"
```
