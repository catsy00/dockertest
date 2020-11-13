FROM rhel8.3:latest
MAINTAINER tjkim
RUN yum install -y httpd
EXPOSE 80
COPY ./src /var/www/html/
USER apache
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D","FOREGROUND"]