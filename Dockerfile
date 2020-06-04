FROM centos:7
LABEL maintainer "Julien CANON <julien.canon@gfi.fr>"

# Installation du JDK
RUN yum install -y java-1.8.0-openjdk

# Installation de tomcat
# basé sur https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-16-04
RUN curl -O http://apache.mirrors.ovh.net/ftp.apache.org/dist/tomcat/tomcat-8/v8.5.55/bin/apache-tomcat-8.5.55.tar.gz \
 && groupadd tomcat \
 && useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat \
 && mkdir -p /opt/tomcat \
 && tar xzvf apache-tomcat-8.5.55.tar.gz -C /opt/tomcat --strip-components=1 \
 && rm -f apache-tomcat-8.5.55.tar.gz \
 && chgrp -R tomcat /opt/tomcat \
 && cd /opt/tomcat \
 && chmod -R g+r conf \
 && chown -R tomcat webapps/ work/ temp/ logs/

CMD ["/opt/tomcat/bin/startup.sh"]
 
