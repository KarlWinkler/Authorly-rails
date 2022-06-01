source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"

gem "rails", "~> 7.0.2", ">= 7.0.2.4"
gem "sprockets-rails"
gem "pg"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
# gem "redis", "~> 4.0"
# gem "kredis"
gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'rake'
gem 'dotenv-rails'
# gem "sassc-rails"
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem 'awesome_print'
  gem 'rspec-rails', '~> 4.0.1'
  gem 'shoulda-matchers'
  gem 'factory_bot_rails'
  gem 'database_cleaner'
  gem 'pry-byebug'
  gem 'pry-rails'
end

group :development do
  gem "web-console"
  # gem "rack-mini-profiler"
  gem "spring"
end

group :test do
  gem "guard"
  gem "guard-rspec", require: false
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
