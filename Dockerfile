FROM drupalci/php-7.3.x-apache:dev

MAINTAINER t_ishikawa

RUN sed -i '/jessie-updates/d' /etc/apt/sources.list
RUN apt-get update && apt-get install -y -q vim

CMD ["apache2ctl", "-D", "FOREGROUND"]