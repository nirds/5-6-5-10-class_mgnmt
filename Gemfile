source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'jquery-rails'

gem 'twitter-bootstrap-rails'
gem 'haml-rails'

gem 'devise'

group :production do
  gem 'pg'
end

group :test do
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'database_cleaner'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end