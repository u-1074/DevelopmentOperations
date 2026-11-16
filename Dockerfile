FROM ubuntu:latest
RUN mkdir tooling
RUN apt-get update && apt-get install vim && apt-get install ansible
COPY '../index.html' .
COPY tooling/* ./tooling/
EXPOSE 8080
CMD ansible-playbook -i tooling/inventory.ini tooling/payload.yml
