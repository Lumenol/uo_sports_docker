FROM node:alpine

RUN apk add --no-cache git python make g++\
	&& git clone https://github.com/RiverWilliams/uo_sports.git \
	&& npm install -g cordova ionic
	
WORKDIR /uo_sports/webclient

CMD git pull && npm update && ionic serve


	