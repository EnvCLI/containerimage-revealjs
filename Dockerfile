############################################################
# Dockerfile
############################################################

# Set the base image
FROM docker.io/node:13.0-alpine

############################################################
# Installation
############################################################

ADD rootfs /
RUN apk add --no-cache bash &&\
    npm install --save --global asciidoctor@2.0.3 &&\
	npm install --save --global asciidoctor-reveal.js@2.0.0 &&\
    npm install --save --global minimist@1.2.0 &&\
    chmod +x /usr/local/bin/revealjs-generate
    
############################################################
# Execution
############################################################
CMD [ "revealjs-generate"]
