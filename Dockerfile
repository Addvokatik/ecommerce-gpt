# Use the official Ruby 3.2 image as the base image
FROM ruby:3.2.2

# Set the working directory in the container
WORKDIR /app

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Update gems
RUN gem update bundler

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock /app/

# Copy the rest of the application code into the container
COPY . /app/

# Install bundler
RUN gem install bundler:2.3.5

# Install gems for development
RUN bundle install

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the Rails application with a development environment
CMD ["rails", "server", "-b", "0.0.0.0", "-e", "development"]

