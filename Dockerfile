FROM debian:latest
MAINTAINER Nimrod Adar <nimrod@shore.co.il>
RUN apt-get update && apt-get install -yf python-dev python-pip python-mysqldb
COPY ./ /opt/docker-intro/
WORKDIR /opt/docker-intro
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ./trivial.py
