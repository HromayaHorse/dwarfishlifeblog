FROM ruby:2.7.0
RUN apt-get update -qq \
&& apt-get install -y nodejs sqlite3

ENV RAILS_ROOT /var/www/dwarfishlifeblog
RUN mkdir -p $RAILS_ROOT

# ADD . /Rails-Docker

WORKDIR $RAILS_ROOT

ENV RAILS_ENV = 'production'
ENV RACK_ENV = 'production'

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install

EXPOSE 3000

CMD ["bash", "bundle", "exec", "puma", "-C", "config/puma.rb"]