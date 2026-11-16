FROM ubuntu:latest
RUN mkdir tooling
COPY '../index.html' .
COPY tooling/* ./tooling/
EXPOSE 8080
CMD ansible-playbook -i tooling/inventory.ini tooling/payload.yml
