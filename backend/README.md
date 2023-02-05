#### REST API with Django

Necesario: 
- instalar python
- instalar pip3

Con pip3 instalar:
- Django
- virualenv


>Al entorno creado lo vamos a ignorar en el .dockerignore.
Las librerias del entorno virual las dejamos atras, y volvemos a instalar solo las que estan en /backend/project/requirements.txt con sus respectivas versiones. Se instalan con pip3 en el Dockerfile (linea:10) dentro de la imagen.
---


##### Formas de correr el server Django
- Podemos correr el backend con el siguiente comando: python3 manage.py runserver
- Buildear solo el backend con el Dockerfile: docker build --tag python-django
- Correr solo el backend: docker run python-django
