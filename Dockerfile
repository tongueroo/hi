FROM tongueroo/ruby:2.3.1
MAINTAINER Tung Nguyen <tongueroo@gmail.com

RUN apt-get update && \
  apt-get install -y net-tools netcat && \
  rm -rf /var/lib/apt/lists/* && apt-get clean && apt-get purge

RUN apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository ppa:git-core/ppa -y && \
  apt-get update && \
  apt-get install -y \
    build-essential \
    libqt4-dev libqtwebkit-dev \
    nodejs \
    telnet \
    curl \
    vim \
    htop \
    mysql-client \
    lsof \
    git && \
  rm -rf /var/lib/apt/lists/* && apt-get clean && apt-get purge

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

