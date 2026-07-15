FROM ruby:3.3-alpine

RUN apk add --no-cache linux-headers build-base gcc bash cmake

COPY Gemfile Gemfile.lock ./

RUN bundle install

EXPOSE 4000

WORKDIR /site

# create new site by setting -e JEKYLL_NEW=true
ENV JEKYLL_NEW false

COPY docker-entrypoint.sh /usr/local/bin/

# on every container start we'l'
ENTRYPOINT [ "docker-entrypoint.sh" ]
