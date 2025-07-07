FROM rockylinux:9.3.20231119

MAINTAINER "jaya@yahoo.com"

#RUN sed -i  's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*  &&  \
#    sed -i  's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g'  /etc/yum.repos.d/CentOS-*

RUN dnf install java-17-openjdk java-17-openjdk-devel  -y

COPY Dockerfile  /root/

#COPY aa.txt /mnt/

ADD apache-tomcat-8.5.89.tar.gz  /opt

WORKDIR /opt/apache-tomcat-8.5.89/bin/

EXPOSE 8080 8085 8081 443

CMD ["/opt/apache-tomcat-8.5.89/bin/catalina.sh","run"]
