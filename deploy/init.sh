# navigate to reactjs folder
cd ../frontend-reactjs

# build Dockerfile reactjs
docker build -t reactjs:latest .
# docker push

# navigate to backend django folder
cd ../backend/project

# build Dockerfile python-django
docker build -t python-django:latest .

# navigate back to the root folder and run containers
cd ../../deploy
docker-compose up