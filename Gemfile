source 'https://rubygems.org'

ruby '2.5.1'
gem 'rails', '~> 5.2'
gem 'pg', '~> 0.2'
gem 'responders'
gem 'figaro'
gem 'faraday'
# Use Puma as the app server
gem 'puma'
gem 'bcrypt'
# Adds multitenancy via gem
gem 'apartment'
# Boot reallllll quick like
gem 'bootsnap', require: false
# Broke it, maybe this fixes it
gem 'passenger'

group :development, :test do
  gem 'foreman'
  gem 'pry'
  gem 'faker'
  # Might as well use the day-job styles
  gem 'wetransfer_style'
end

group :development do
  gem 'listen'
end

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'fabrication'
  gem 'brakeman',  require: false
  gem 'simplecov', require: false
end
