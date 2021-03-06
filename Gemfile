source 'https://rubygems.org'
ruby '2.2.2'

# Tech specification:
# -------------------
# Devise, CanCan, Bootstrap, Haml/Slim, Sass, pg (Postgres),
# faker, pry, cucumber, jquery, rolify, factory girl.

# -> use Pundit instead of CanCan
# -> use Bootswatch instead of Bootstrap

gem 'rails', '~> 4.2', '>= 4.2.4'
gem 'puma', '~> 2.15', '>= 2.15.3'
gem 'pg', '~> 0.18.3'

# authentication
gem 'devise', '~> 3.5', '>= 3.5.2'
# users online
gem 'onliner', '~> 1.1', '>= 1.1.1'
# authorization
# gem 'cancancan', '~> 1.10'
gem 'pundit', '~> 1.0', '>= 1.0.1'
# TODO: compass
# sass from twitter css design
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.5.1'
gem 'autoprefixer-rails', '~> 6.0', '>= 6.0.3'
gem 'bootswatch-rails', '~> 3.3', '>= 3.3.5'
gem 'font-awesome-sass', '~> 4.4.0'
# markup
# gem 'slim', '~> 3.0', '>= 3.0.6'
gem 'slim-rails', '~> 3.0', '>= 3.0.1'
# Add logic-free view mustache support to slim templates
# gem 'slim-mustache', '~> 1.0', '>= 1.0.2'
gem 'html2slim', require: false

# forms
gem 'simple_form', '~> 3.2'
# roles
gem 'rolify', '~> 4.1', '>= 4.1.1'
# playing cards
gem 'card_deck', '~> 4.0', '>= 4.0.1'

group :assets do
  gem 'sass-rails', '~> 5.0', '>= 5.0.4'
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
  # debug
  gem 'pry', require: false
  gem 'pry-rails'
  gem 'pry-remote', require: false
  gem 'byebug'
  gem 'pry-byebug'
  gem 'pry-stack_explorer', require: false
end

group :development do
  # code navigation
  gem 'pry-doc', require: false
  gem 'method_source', require: false
  gem 'pry-awesome_print', require: false
  # analitics
  gem 'rubocop', require: false
  gem 'metric_fu', require: false

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'rspec-rails'
  gem 'cucumber-rails', require: false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  # MOC data
  gem 'faker', '~> 1.5'
  # Fixtures
  gem 'factory_girl_rails', '~> 4.5'
  gem 'coveralls', '~> 0.8.3', require: false
end
