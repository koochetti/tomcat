FROM tomcat
COPY . /usr/local/tomcat/webapps/ROOT
CMD ["catalina.sh", "run"]
