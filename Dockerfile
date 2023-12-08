FROM ruby:3.1

WORKDIR /EarthDiary

COPY Gemfile /EarthDiary/Gemfile
COPY Gemfile.lock /EarthDiary/Gemfile.lock

RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]
