This image is created based on openjdk:8-jdk-alpine docker image and getting the code from https://developer.mulesoft.com/download-mule-esb-runtime/

How to use
--

building your image

In a folder with your .jar file, create a dockerfile based on the next template:

```
FROM cristiand142/mulesoft-esb-runtime:4.5
COPY <yourproject>.jar /opt/mule/apps

EXPOSE <portnumber>
```

Where yourproject is the name of you jar file and portnumber is the port number to expose the service usually is 8081.

finally build your image with the following command

```
docker build --tag="mulesoft-your-project:latest" .
```

note: tag your project as you wish. 

Runing your built image
--

Just execute

```
docker run -d --name mulesoft-your-project.latest -p "<realport>:<exposedport>" mulesoft-your-project:latest
```

Where realport is the real port in your host, exposedport is the port defined during the building. feel free to name your instance as you wish.

congrats! your service is online in your host.

WARNING
--

This project doesn't take in account security.if you want to use https for your service, I personally recommend a reverse proxy (i.e using apache server or some other service)