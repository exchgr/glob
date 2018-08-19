FROM ruby:2.5.1-alpine

RUN apk update && apk add build-base postgresql-dev nodejs yarn
RUN mkdir /glob
WORKDIR /glob
COPY . /glob
RUN bundle
