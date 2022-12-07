FROM  ubuntu:latest
MAINTAINER vikashashoke@gmail.com
RUN apt-get update 
RUN apt-get install –y apache2 
RUN apt-get install –y apache2-utils 
RUN apt-get clean 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
