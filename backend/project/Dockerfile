
# Declare image
FROM python:3.7.4 as build

# Create workdir
WORKDIR /django

# install libraries with pip3
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# Copy the project folder
COPY . .

# Run server
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"] 