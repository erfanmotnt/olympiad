FROM ruby:2.6
WORKDIR /usr/src/app/

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

COPY Gemfile just-the-docs.gemspec ./
COPY Gemfile just-the-docs.gemspec ../
COPY . /usr/src/
COPY . /usr/src/app/


RUN gem update --system
RUN gem update
RUN gem install bundler -v 2.1.4
RUN bundle _2.1.4_ install
RUN bundle _2.1.4_ exec jekyll build -b https://video.esfoly.ir

EXPOSE 4000
