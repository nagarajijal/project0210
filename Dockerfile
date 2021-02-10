FROM centos:latest
MAINTAINER Nagaraj Jalawadi
RUM yum install -y httpd \
   zip \
   unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page259/jack.zip /var/www/html
WORKDIR /var/www/html
RUN unzip jack.zip
RUN cp -rvf jack/* .
RUN rm -rf _MACOSX markups-jack jack.zip
CMD ["/usr/sbin/httpd", "-o", "FOREGROUD"]
EXPOSE 80
