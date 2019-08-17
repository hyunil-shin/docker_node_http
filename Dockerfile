FROM    node:10-alpine

RUN     npm install -g http-server

WORKDIR /site
RUN fallocate -l 200M /site/200m
RUN fallocate -l 500M /site/500m
#ADD     ./site   /site

# The default port of the application
EXPOSE  8080

CMD ["http-server", "--cors", "-p8080", "/site"]
