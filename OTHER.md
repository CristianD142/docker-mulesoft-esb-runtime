Application from
--
https://developer.mulesoft.com/download-mule-esb-runtime/
https://repository.mulesoft.org/nexus/service/local/repositories/releases/content/org/mule/distributions/mule-standalone/4.5.0/mule-standalone-4.5.0.tar.gz

Building Image
--

docker build --tag="mulesoft-esb-runtime:latest" .
docker build --tag="mulesoft-esb-runtime:4" .
docker build --tag="mulesoft-esb-runtime:4.5" .
docker build --tag="mulesoft-esb-runtime:4.5.0" .

Running Image
--
docker run -it --name mulesoft-esb-runtime.4.5.0  mulesoft-esb-runtime:latest sh
docker run -d --name mulesoft-esb-runtime.latest -p "8081:8081" mulesoft-esb-runtime:latest