FROM maven:3.5.2-alpine

RUN apk add --no-cache git \
	&& mkdir webservice \
	&& cd webservice \
	&& git clone https://github.com/RiverWilliams/uo_sports.git \
	&& cd uo_sports/webservice \
	&& mvn package \
	&& mv target/*.jar ../../webservice.jar \
	&& cd ../.. \
	&& rm -r uo_sports
	
WORKDIR /webservice

CMD sleep 10 && java -jar webservice.jar


	