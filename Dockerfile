FROM ubuntu:14.04

VOLUME /jmeter

RUN apt-get update -qq && apt-get upgrade -y
RUN apt-get install -y jmeter

ENTRYPOINT ["/usr/bin/jmeter", "--nongui"]
