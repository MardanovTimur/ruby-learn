FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /project
WORKDIR /project
COPY Gemfile /project/Gemfile
COPY Gemfile.lock /project/Gemfile.lock
RUN bundle install
