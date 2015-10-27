source 'https://rubygems.org'
ruby "2.2.0"

# Tech specification:
# -------------------
# Devise, CanCan, Bootstrap, Haml/Slim, Sass, pg (Postgres),
# faker, pry, cucumber, jquery, rolify, factory girl.

gem 'rails', '~> 4.2', '>= 4.2.4'
gem 'pg', '~> 0.18.3'

# authentication
gem 'devise', '~> 3.5', '>= 3.5.2'
# authorization
gem 'cancan', '~> 1.6', '>= 1.6.10'
# sass from twitter css design
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.5.1'
# markup
gem 'slim', '~> 3.0', '>= 3.0.6'
# roles
gem 'rolify', '~> 4.1', '>= 4.1.1'
# playing cards
gem 'deck', '~> 1.1', '>= 1.1.2'

group :assets do
  gem 'sass', '~> 3.4', '>= 3.4.19'
  gem 'coffee-rails', '~> 4.1'
  gem 'uglifier', '~> 2.7', '>= 2.7.2'
end

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  gem 'pry'
  gem 'rubocop', '= 0.30.0' # ruby-2.2.0 compliant syntax
  gem 'parser', '= 2.2.0.1' # ruby-2.2.0 compliant syntax
  gem "rsense"

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'rspec-rails'
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  # MOC data
  gem 'faker', '~> 1.5'
  # Fixtures
  gem 'factory_girl_rails', '~> 4.5'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'coveralls', '~> 0.8.3'
end
