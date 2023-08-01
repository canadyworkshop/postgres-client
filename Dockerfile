FROM debian:latest

COPY install.sh ./install.sh
RUN "./install.sh"