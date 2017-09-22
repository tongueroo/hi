FROM tongueroo/hi:base-2017-09-21T23-15-29-0a2c702

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install --system

ADD . /app
RUN bundle install --system

RUN chmod a+x bin/*

EXPOSE 3000

CMD ["bin/web"]
