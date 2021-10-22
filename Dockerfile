FROM ruby:2.7.0

RUN apt-get update -qq \
&& apt-get install -y nodejs sqlite3
RUN apt-get update && apt-get install -y yarn

ADD . /Rails-Docker
WORKDIR /Rails-Docker

RUN bundle install
RUN bundle exec rake assets:precompile

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]