FROM nginx
LABEL MAINTAINER='Eric Buhr'
LABEL EMAIL='buhr3940@stthomas.edu'
RUN apt-get update -y
EXPOSE 80
COPY index.html /usr/share/nginx/html/
