source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.7'
# Use postgresql as the database for Active Record
gem 'pg'
# Bootstrap Sass for rails
gem 'bootstrap-sass', '3.3.0.1'#'<= 3.3.0.1', '>= 3.2.0.2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Adds vendor prefixes to css rules
gem 'autoprefixer-rails'
# Abstraction Markup
gem 'haml-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.1.0'#'<= 4.1.0', '>= 4.0.1'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.2.2'
# Manage roles of users
gem 'rolify'
# Maps controller filters to resource scopes
gem 'has_scope'
# A set of Rails responders
#gem 'responders'
# Authentication Component
gem 'devise'
# Authentication Component for Additional Services
gem 'omniauth', '>= 1.0.0'
# Rails forms made easy.
gem 'simple_form'
# Authorization library for Ruby on Rails which restricts what resources a given user is allowed to access.
gem 'cancancan', '~> 1.9'
# Handles Rails error pages in a clean, simple way
gem 'gaffe'
# Dynamic nested forms made easy
gem 'cocoon'
# Rails Admin: engine that provides an easy-to-use interface for managing data
gem 'rails_admin', '~> 0.6.5'
# Track changes to your models' data. Good for auditing or versioning.
gem 'paper_trail', '~> 3.0.6'
# An interface to the ImageMagick and GraphicsMagick image processing libraries. http://rmagick.rubyforge.org/
gem 'rmagick', :require => false
# Classier solution for file uploads for Rails, Sinatra and other Ruby web frameworks
gem 'carrierwave'
# Font Awesome Icons
gem 'font-awesome-sass'
# Pagination for indexes and its styling through Bootstrap
gem 'will_paginate', '~> 3.0'
gem 'bootstrap-will_paginate'
# Breadcrumbs
gem 'gretel'
# Handle States
gem 'state_machine'
# Adds dynamic fields
gem 'nested_form_fields'
# Turbolink Fix
gem 'jquery-turbolinks'
# Excell Exporting
gem 'axlsx_rails'
# Documentation
gem 'inch', require: false
# XML Parsing
#gem 'nokogiri', '~> 1.6.1'
# Generate test data (remove from production)
gem 'faker'


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0'
end

group :test do
  gem 'shoulda-matchers'
  gem 'database_cleaner'
end

group :development do
  # Better Errors: Replaces the standard Rails error page with a more useful one
  gem 'better_errors'
  gem 'binding_of_caller' # Needed by better_errors to enable html console
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # RSpec testing Framework for Rails
  gem 'rspec-rails', '~> 3.1.0'
  # Acceptance testing framework for Rails
  gem 'capybara', '>= 2.4.1'
  # Test data object creation for Ruby
  gem 'factory_girl', '4.5.0'#'<= 4.5.0', '>= 4.4.0'
  # Test data object creation for Ruby
  gem 'annotate'
  # Restarts an app when the filesystem changes
  gem 'rerun', require: false
  # Every Rails page has footnotes that gives information about your application
  gem 'rails-footnotes'
  # Really fast deployer and server automation tool
  gem 'mina', require: false
  # A I18n YAML deep sorter that will keep your locales organized
  gem 'i18n_yaml_sorter'
  # Generate test data
  #gem 'faker'
  # Guard: automatically run commands when files are changed
  gem 'guard'
  gem 'guard-rspec', require: false      # Automatically run tests
  gem 'terminal-notifier-guard'          # Mac OS X User Notifications for Guard
  gem 'guard-livereload', require: false # Automatically reload your browser when 'view' files are modified
  gem 'guard-bundler'                    # Automatically install/update gem bundle when needed
  gem 'guard-annotate'                   # Automatically run the annotate gem when needed
  gem 'guard-migrate'                    # Automatically run migrations when they are edited
end

group :production do
  # Makes running your Rails app easier. Based on the ideas behind 12factor.net
  gem 'rails_12factor'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use unicorn as the app server
# gem 'unicorn'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# Use debugger
# gem 'debugger', group: [:development, :test]