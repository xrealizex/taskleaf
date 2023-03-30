FROM ruby:2.5.1
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get update
RUN apt-get install -y \
  build-essential \
  libpq-dev \
  postgresql-client \
  nodejs \
  yarn
WORKDIR /taskleaf
COPY Gemfile Gemfile.lock /taskleaf/
RUN bundle install
