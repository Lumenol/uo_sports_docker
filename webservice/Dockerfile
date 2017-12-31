FROM maven:3.5.2-alpine

RUN apk add --no-cache git \
	&& git clone https://github.com/RiverWilliams/uo_sports.git
	
WORKDIR /uo_sports/webservice

CMD git pull && sleep 5 && mvn spring-boot:run


	