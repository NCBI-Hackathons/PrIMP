# serve www.elabftw.net on port 4000
FROM ruby:2.3
MAINTAINER Nicolas CARPi <nicolas.carpi@curie.fr>

COPY ./src /src

WORKDIR /src

RUN gem install jekyll

EXPOSE 4000

ENTRYPOINT jekyll serve

LABEL org.label-schema.name="elabweb" \
    org.label-schema.description="Run WEBrick serving content for https://www.elabftw.net" \
    org.label-schema.url="https://www.elabftw.net" \
    org.label-schema.vcs-url="https://github.com/elabftw/elabweb" \
    org.label-schema.version=$ELABFTW_VERSION \
    org.label-schema.schema-version="1.0" \
    org.label-schema.docker.cmd="docker run --name elabweb --restart=always -p 9090:4000 -d elabftw/elabweb" \
