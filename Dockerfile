FROM ruby:2.4.1

MAINTAINER borja "https://github.com/borja"

WORKDIR /usr/src/app

# Source code repository from github
# Redundant WORKDIR
COPY . /usr/src/app/

# Intall requested gems
RUN bundle install --path vendor/bundle


# Sinatra server launching port
EXPOSE 9292

# This docker file will be for production env.
ENV RACK_ENV=production
CMD bundle exec ruby -S rackup -w config.ru
