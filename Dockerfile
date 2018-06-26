FROM ruby:alpine

RUN apk add --update build-base postgresql-dev tzdata

WORKDIR /app

COPY ./ /app
RUN bundle install

CMD ["puma"]
