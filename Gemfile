# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 5.2.1"
# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"
# Use Puma as the app server
gem "puma", "~> 3.11"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.1.0", require: false

gem "jsonapi-resources", "= 0.9.0"
gem "jsonapi-utils", "~> 0.7.2"

# Shim to load environment variables from .env into ENV in development
gem "dotenv-rails"
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'
# Generates swagger-ui json files for Rails APIs with a simple DSL.
gem "swagger-blocks"

group :development, :test do

  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  # Use RSpec to execute specs suite
  gem "rspec-rails"
  # Use Factory Bot to create objects dynamically
  gem "factory_bot_rails"

  # RuboCop is a Ruby static code analyzer
  gem "rubocop", require: false
  # Use Faker to generate data dynamically
  gem "faker"
  # Ruby library that pretty prints Ruby objects in full color exposing
  gem "awesome_print"
  gem "rubocop-rspec"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  # Use to clean database before and after tests with RSpec
  gem "database_cleaner"
  # Use for codeclimate test coverage
  # gem "simplecov", require: false
  gem "codeclimate-test-reporter", "~> 1.0.0"

  # gem "simplecov", "= 0.8.2"
  # gem 'simplecov-shield'
  # Collection of testing matchers
  gem "shoulda-matchers"
  # Validate the JSON returned by your Rails JSON APIs
  gem "json_matchers"
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
