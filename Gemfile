source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'rack', '1.4.5'
gem 'pg'
gem 'jquery-rails'
gem "thin", ">= 1.4.1"
gem "haml", ">= 3.1.7"
gem "simple_form", ">= 2.0.2"
gem 'valid_email', :require => 'valid_email/email_validator'
gem 'activeadmin', '~> 0.5.1'
gem 'mini_magick'
gem 'carrierwave'
gem "fog", "~> 1.3.1"


group :development do
  gem 'sqlite3'
  gem 'debugger'
  gem "haml-rails", ">= 0.3.4"
  gem "hpricot", ">= 0.8.6"
  gem "ruby_parser", ">= 2.3.1"
  gem "hub", ">= 1.10.2", :require => nil
  gem 'rb-fsevent', '~> 0.9.1'
  gem 'guard-livereload'
  gem 'guard-bundler'
  gem 'rack-livereload', "~> 0.3.7", git: "git://github.com/johnbintz/rack-livereload.git"
  gem 'quiet_assets'
end

group :development, :test do
  gem "rspec-rails", ">= 2.11.0"
end

group :test do
  gem "capybara", ">= 1.1.2"
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'newrelic_rpm'
end

