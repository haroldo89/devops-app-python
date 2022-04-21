# set base image (host OS)
FROM python:3.8-slim-buster
# set the working directory in the container
WORKDIR /app
# install dependencies
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
# copy the content of the local src directory to the working directory
COPY . .
# command to run on container start
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]