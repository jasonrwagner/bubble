source 'https://rubygems.org'
#ruby '2.0.0'

gem 'rails', '4.0'
gem 'devise', github: 'idl3/devise', branch: 'rails4'
gem 'coffee-rails', '~> 4.0.0'
gem 'sass-rails',   '~> 4.0.0'
gem "therubyracer"
gem "less-rails"
gem "twitter-bootstrap-rails"
gem "fullcalendar-rails"
gem 'momentjs-rails'
gem 'bootstrap-datepicker-rails'




# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3', :group => [:development, :test]
gem 'tilt'
gem 'execjs'
gem 'heroku'
gem 'thin'
gem 'taps'
gem 'minitest'
gem 'rb-inotify'

group :test do

  gem 'mysql2'
  gem 'taps', :require => false # has an sqlite dependency, which heroku hates'
  gem 'rspec-rails' #, "~> 2.8"
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
  gem "factory_girl_rails"
  gem 'webrat'
  gem 'cucumber-websteps'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem "selenium-webdriver", "~> 2.38.0"
  gem "watir-rails"
end

group :production do
  gem 'pg'
#  gem 'thin'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do



  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
