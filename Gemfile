source 'https://rubygems.org'
ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# 
gem 'jquery-turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'bootstrap-sass'
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Generate users
gem 'devise', '~> 3.2.4'

# Upload images to AWS S3
gem 'paperclip', '~> 4.1'
gem 'aws-sdk', '~>1.47.0'

# Add javascript grid layoud library
gem 'masonry-rails', '~>0.2.0'


# If you are using a version of Ruby older than 1.9, you may encounter problems with Nokogiri. The authors dropped support for Ruby 1.8.x in Nokogiri 1.6. To use aws-sdk, you'll also have to install or specify a version of Nokogiri prior to 1.6, like this:
gem 'nokogiri', '~> 1.5.0'
# AWS S3 direct upload such that one does not need to wait on Heroku

# Allow pagination
gem 'will_paginate', '~> 3.0'
gem 'will_paginate-bootstrap'

# Use sqlite3 as the database for Active Record
group :development, :test do
	gem 'sqlite3'
end
# Use postgres gem in prduction environment
group :production do
	gem 'pg'
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

