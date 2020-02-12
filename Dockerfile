FROM httpd:alpine
MAINTAINER arnabsinha4u@gmail.com
COPY automobile-trust-quotient.html /usr/local/apache2/htdocs/index.html
COPY images/hd-digital-car-image.jpg /usr/local/apache2/htdocs/images/hd-digital-car-image.jpg
