FROM nginx
LABEL MAINTAINER='Eric Buhr'
LABEL EMAIL='buhr3940@stthomas.edu'
RUN apt-get update -y
EXPOSE 80
COPY workspace/docker-pipeline2/index.html usr/share/nginx/html/
