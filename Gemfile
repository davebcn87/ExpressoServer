source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# Dev 
group :development do
  gem 'sqlite3'
end

# Heroku!
group :production do
  gem 'therubyracer-heroku', '0.8.1.pre3' 
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem "nifty-generators", :group => :development

# To use ActiveModel has_secure_password
gem "bcrypt-ruby", :require => "bcrypt"

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

gem "mocha", :group => :test

gem "seed_dump", "~> 0.3.4"
