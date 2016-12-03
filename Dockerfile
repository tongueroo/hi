FROM 467446852200.dkr.ecr.us-east-1.amazonaws.com/hi:base-2016-12-03T01-14-46-182519e

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install --system

ADD . /app
RUN bundle install --system

RUN chmod a+x bin/*

EXPOSE 3000

CMD ["bin/web"]
