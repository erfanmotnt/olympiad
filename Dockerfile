FROM ruby:2.6

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

WORKDIR /usr/src/app

COPY Gemfile just-the-docs.gemspec ./

RUN gem update --system
RUN gem update
RUN gem install bundler -v 2.1.4
RUN bundle _2.1.4_ install
