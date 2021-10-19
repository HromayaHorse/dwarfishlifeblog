FROM ruby:2.7.0
RUN apt-get update -qq \
&& apt-get install -y nodejs sqlite3
ADD . /Rails-Docker
WORKDIR /Rails-Docker
RUN bundle install
EXPOSE 3000
CMD ["bash"]