FROM httpd:latest
MAINTAINER tjkim
EXPOSE 8080
COPY ./src /var/www/html/
USER apache
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D","FOREGROUND"]