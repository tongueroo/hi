FROM tongueroo/ruby:2.3.1
MAINTAINER Tung Nguyen <tongueroo@gmail.com

# Install bundle of gems first in a layer
# so if the Gemfile doesnt chagne it wont have to install gems again
WORKDIR /tmp
COPY Gemfile* /tmp/
RUN bundle install && rm -rf /root/.bundle/cache

# Add the Rails app
ENV HOME /root
WORKDIR /app
COPY . /app
RUN bundle install
RUN mkdir -p tmp/cache tmp/pids

EXPOSE 5001
CMD ["bin/web"]

