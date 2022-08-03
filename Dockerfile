FROM tomcat:9.0

WORKDIR '/temp'

COPY . .

RUN jar -cvf /usr/local/tomcat/webapps/organdonor.war *

CMD ["catalina.sh", "run"]