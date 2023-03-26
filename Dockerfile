FROM ruby:2.5.1
RUN apt-get update
RUN apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn
WORKDIR /taskleaf
COPY Gemfile Gemfile.lock /taskleaf/
RUN bundle install
