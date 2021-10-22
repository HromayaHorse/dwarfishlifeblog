FROM ruby:2.7.0


RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nodejs sqlite3  \
    npm    
RUN npm install --global yarn


ADD . /Rails-Docker
WORKDIR /Rails-Docker
COPY Gemfile /Rails-Docker/Gemfile
COPY Gemfile.lock /Rails-Docker/Gemfile.lock

RUN bundle install
RUN bundle exec rake assets:precompile

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]