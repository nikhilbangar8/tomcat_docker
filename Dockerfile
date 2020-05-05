FROM ubuntu
RUN apt-get update -y
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apt-utils -y
RUN apt-get install wget -y
RUN apt-get install tzdata -y
RUN apt-get install unzip -y
RUN apt-get install openjdk-8-jdk -y
RUN apt-get install openjdk-8-jdk-headless -y
RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.34/bin/apache-tomcat-9.0.34.zip
RUN unzip apache-tomcat-9.0.34.zip 
RUN chmod -R 755 apache-tomcat-9.0.34
RUN ./apache-tomcat-9.0.34/bin/catalina.sh start
ENTRYPOINT /apache-tomcat-9.0.34/bin/catalina.sh start && tail -f /dev/null
