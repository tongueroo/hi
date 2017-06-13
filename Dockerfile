FROM tongueroo/hi:base-2017-06-12T14-36-44-2af505e

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install --system

ADD . /app
RUN bundle install --system

RUN chmod a+x bin/*

EXPOSE 3000

CMD ["bin/web"]
