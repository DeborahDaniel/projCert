From devopsedu/webapp
RUN apt-get update -y
RUN apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-common php7.0-gd php7.0-intl php7.0-x
ml php7.0-mysql php7.0-mcrypt php7.0-zip
RUN rm -rf /var/www/html/*
RUN apt-get install -y apache2
ADD projCert /var/www/html
ADD projCert/website/content/about-us.php content/about-us.php
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
