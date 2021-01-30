FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /hexagonal-app
WORKDIR /hexagonal-app
COPY Gemfile /hexagonal-app/Gemfile
COPY Gemfile.lock /hexagonal-app/Gemfile.lock
RUN bundle install
COPY . /hexagonal-app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]