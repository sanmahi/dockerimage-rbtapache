FROM centos:latest
MAINTAINER santhosh
RUN yum -y install httpd
COPY index.html /var/www/html/
RUN echo "ServerName localhost" >> /etc/httpd/conf/httpd.conf
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 8080
