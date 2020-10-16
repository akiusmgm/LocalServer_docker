FROM alpine

LABEL version="1.3"
LABEL description="alpine_apache_php_python_perl"

RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

RUN apk add apache2 php7-apache2 php7-pdo php7-mysqli php7-pdo_mysql php7-json
RUN sed -i -e "s/\#LoadModule cgi_module modules\/mod_cgi.so/LoadModule cgi_module modules\/mod_cgi.so/g" /etc/apache2/httpd.conf
RUN sed -i -e "s/;date.timezone =/date.timezone = \"Asia\/Tokyo\"/g" /etc/php7/php.ini
RUN apk add perl python3 py3-pip
RUN pip3 install requests
RUN apk add php7-session


EXPOSE 80
CMD ["/usr/sbin/httpd", "-k", "start", "-f", "/etc/apache2/httpd.conf", "-D", "FOREGROUND"]
#CMD ["apachectl", "-D", "FOREGROUND"]


