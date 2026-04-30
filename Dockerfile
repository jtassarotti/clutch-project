FROM ruby:3.3-slim-bookworm

RUN apt-get update && apt-get install -y \
    build-essential \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /clutch-project
COPY Gemfile Gemfile.lock /clutch-project/
WORKDIR /clutch-project
RUN gem install bundler:2.5.23
RUN bundle install

CMD bundle exec jekyll serve --watch --host 0.0.0.0
