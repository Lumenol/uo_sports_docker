FROM node:alpine

RUN apk add --no-cache git python make g++\
	&& git clone https://github.com/RiverWilliams/uo_sports.git \
	&& npm install -g cordova ionic
	
WORKDIR /uo_sports/webclient

CMD git checkout && git pull && sed -i "s/localhost:8080/$WEBSERVICE/" src/common/urls.ts && npm update && ionic serve


	