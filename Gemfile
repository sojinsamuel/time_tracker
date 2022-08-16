source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "sprockets-rails"
gem 'pg'
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

# added gems
gem "bootsnap", require: false
gem 'faker'
gem "devise", github: "heartcombo/devise", branch: "main"
gem 'friendly_id', '~> 5.4.0'
gem 'pagy', '~> 5.10'
gem "jquery-rails"
gem 'bootstrap', '~> 5.1.3'
gem "sassc-rails" 
gem 'gritter', '~> 1.2'
gem 'administrate'
gem 'bourbon'
gem "pundit", "~> 2.2"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails'
  gem 'byebug'
  gem 'database_cleaner'
  gem "factory_bot_rails", "~> 6.1.0"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end


