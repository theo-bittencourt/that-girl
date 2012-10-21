source 'https://rubygems.org'

gem 'rails', '3.2.7'
gem 'jquery-rails'
gem "thin", ">= 1.4.1"
gem "haml", ">= 3.1.7"
gem "simple_form", ">= 2.0.2"
gem 'valid_email', :require => 'valid_email/email_validator'
gem "rspec-rails", ">= 2.11.0", :group => [:development, :test]
gem "capybara", ">= 1.1.2", :group => :test

group :development do
  gem 'sqlite3'
  gem 'debugger'
  gem "haml-rails", ">= 0.3.4"
  gem "hpricot", ">= 0.8.6"
  gem "ruby_parser", ">= 2.3.1"
  gem "hub", ">= 1.10.2", :require => nil
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end


group :production do
  gem 'pg'
  gem 'newrelic_rpm'
end

