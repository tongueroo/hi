FROM tongueroo/hi:base-2016-12-02T00-04-13-41e57e5

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install --system

ADD . /app
RUN bundle install --system

RUN chmod a+x bin/*

EXPOSE 3000

CMD ["bin/web"]
