source 'https://rubygems.org'

gem 'rails', '4.0.4'
gem 'bootstrap-sass', '2.3.2.0'
gem 'sprockets', '2.11.0'
gem 'bcrypt-ruby', '3.1.2'
gem 'faker'
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'

# soll Warnung bei rails server verhindern: WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true
gem 'thin'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '2.14'
  # The following optional lines are part of the advanced setup.
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.5.3'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.2.0'
  gem 'cucumber-rails', '1.4.0', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'

  # Uncomment this line on OS X.
  # gem 'growl', '1.0.3'

  # Uncomment these lines on Linux.
  # gem 'libnotify', '0.8.0'

  # Uncomment these lines on Windows.
  gem 'rb-notifu', '0.0.4'
  gem 'wdm', '0.1.0'
end

gem 'sass-rails', '4.0.1'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.2'

gem 'awesome_print'
gem 'country_select'
gem 'simple_form'

group :doc do
  gem 'sdoc', require: false
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end
