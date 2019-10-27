############################################################
# Dockerfile
############################################################

# Set the base image
FROM docker.io/alpine:3.10

ENV RUBYGEM_ASCIIDOCTOR="asciidoctor:2.0.10" \
    RUBYGEM_ASCIIDOCTOR_REVEALJS="asciidoctor-revealjs:2.0.0"

############################################################
# Installation
############################################################

ADD rootfs /
RUN echo "Installing OS-Packages ..." &&\
    apk add --no-cache \
    bash \
    ruby \
    ruby-mathematical \
    ruby-rake &&\
    echo "Installing RubyGems" &&\
    gem install --no-document \
    "$RUBYGEM_ASCIIDOCTOR" \
    "$RUBYGEM_ASCIIDOCTOR_REVEALJS"
    
############################################################
# Execution
############################################################
