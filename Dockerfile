FROM openjdk:8-jdk-alpine

#update alpine and add gcompat to run glibc programs, this is required for mulesoft ESB to run
RUN apk --no-cache update && \
    apk --no-cache upgrade && \
    apk add gcompat
    
#download mulesoft ESB from mulesoft and move to the final location /opt/mule
RUN wget https://repository.mulesoft.org/nexus/service/local/repositories/releases/content/org/mule/distributions/mule-standalone/4.5.0/mule-standalone-4.5.0.tar.gz && \
    tar xvzf mule-standalone-4.5.0.tar.gz && \
    mkdir /opt/mule && \
    mv /mule-standalone-4.5.0/* /opt/mule/ && \
    rm mule-standalone-4.5.0.tar.gz

VOLUME /opt/mule/

#EXPOSE 8081

CMD [ "/opt/mule/bin/mule"]

