##### DevOps Project by: sziinocolanino@gmail.com

                                        <ReactJs, Django and Docker project>

### ReactJs

 >Con nuestro frontend en ReactJs nos comunicamos con Django a travez de Axios. De esta forma consumimos el puerto :8000/wel. De esta forma mostramos en pantalla la request que carguemos en Django a travez de los inputs: usuario y password.

### Django

Usamos Django para realizar una *REST API* facil y simple, donde podemos llenar dos inputs: usuario y password, esto se almacena en la *DBSQLite*, para luego consumirlo con el frontend-reactjs.

Creamos un entorno virutal para mantener las versiones que necesitemos sin colisionar con los demas. Pero vamos a ignorarlo en el .dockerignore. para luego instalar las librerias necesarias dentro del contenedor a la hora de buildear y correr el proyecto.

-Librarie & version installed in docker container:
 - djangorestframework 3.12.4
 - django-cors-headers 3.7.0
 - asgiref 3.3.1
 - Django 3.1.7
 - pytz 2021.1
 - sqlparse 0.4.1

# ¿Como arrancar el proyecto en localhost?

##### Para correr este proyecto en tu local necesitamos instalado localmente:
- Docker:latest
- Docker-compose:latest

>   En el folder 'deploy' por un lado tenemos el docker-compose.yml que esta preparado para buildear y/o correr las dos imagenes que generamos con el frontend-reactjs y el backend-django.
 
### /deploy

Cuando nos posicionamos en la carpeta /deploy ejecutamos en terminal el siguiente comando 'chmod +x init.sh', 
de esta forma le das a tu ordenador los permisos necesarios para ejecutar los scripts.

 El archivo lo ejecutamos escribiendo './init.sh' en la terminal y automaticamente va a buildear el Frontend y el Backend, una vez finalizado va a correr las dos imagenes.

###  PORTS
>Los puertos expuestos seran:
    - python-django: 8000
    - reactjs: 3000

---
<!-- [![My Skills](https://skillicons.dev/icons?i=docker)](https://skillicons.dev) -->
Install docker:latest
Install docker-compose:latest

#### In /frontend-reactjs
>In frontend-reactjs folder build Dockerfile with: docker build --tag frontend-reactjs
build image and we can run the image.
In the same folder script: docker run --publish 3000:3000 frontend-reactjs
arrancamos la imagen llamada "frontend-reactjs" en el puerto 3000:3000 publicamente

#### In /backend-django/project
> build Dockerfile with next script: docker build --tag  backend-django
build image and install requirements.txt, all libraries necesarys
In backend-django/project folder build Dockerfile with next script: docker run --publish 8000:8000 backend-django

---



<!-- ![https://www.linkedin.com/in/stefano-ziino-colanino-199898160/][linkedin-shield] -->

<!-- [linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555 -->
