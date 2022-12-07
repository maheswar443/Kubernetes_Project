FROM  ubuntu:latest
MAINTAINER vikashashoke@gmail.com
#RUN yum update -y 
#RUN yum install -y httpd zip unzip
RUN apt update 
RUN apt-get -y install curl
RUN apt install –y apache2 
RUN apt install –y apache2-utils 
RUN apt clean
RUN apt-get install zip unzip

#EXPOSE 80
#CMD [“apache2ctl”, “-D”, “FOREGROUND”]
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
CMD [“/usr/sbin/apache2ctl”, “-D”, “FOREGROUND”]
EXPOSE 80

# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
#  ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
#  WORKDIR /var/www/html/
#  RUN unzip shine.zip
#  RUN cp -rvf shine/* .
#  RUN rm -rf shine shine.zip
#  CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#  EXPOSE 80
