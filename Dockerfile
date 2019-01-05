FROM websphere-liberty:webProfile7
MAINTAINER Josef Kiefinger
ENV DEPLOYMENT_DIR_OLD /config/dropins/
ENV DEPLOYMENT_DIR /opt/ibm/wlp/usr/servers/defaultServer
COPY src/main/liberty/config/server.xml ${DEPLOYMENT_DIR}
COPY target/meetings*.war ${DEPLOYMENT_DIR}/apps/meetings.war
COPY target/wlp/usr/shared/resources/mongo-java-driver.jar /opt/ibm/wlp/usr/shared/resources 
RUN installUtility install --acceptLicense defaultServer
