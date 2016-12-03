FROM ruby:2.3.3

RUN apt-get update && \
  apt-get install -y net-tools netcat && \
  rm -rf /var/lib/apt/lists/* && apt-get clean && apt-get purge

# Packages
# capybara-webkit: libqt4-dev libqtwebkit-dev
RUN apt-get update && \
  apt-get install -y software-properties-common && \
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

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install --system

ADD . /app
RUN bundle install --system

RUN chmod a+x bin/*

EXPOSE 3000

CMD ["bin/web"]
