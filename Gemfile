source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development do
  gem 'rspec-rails', '2.11.0'
  gem 'annotate', '2.5.0'
end

gem 'pg'
gem 'will_paginate'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem "therubyracer"
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem 'twitter-bootstrap-rails'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
  gem 'jquery-ui-rails'
  gem 'jquery-datatables-rails'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem "thin"
end

group :test do
  gem "capybara"
  gem "launchy"
end

gem 'jquery-rails'
