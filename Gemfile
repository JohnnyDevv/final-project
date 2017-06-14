source 'http://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'
# Use sqlite3 as the database for Active Record

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets

# Use Uglifier as compressor for JavaScript assets

# Use CoffeeScript for .coffee assets and views

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'devise'
gem 'mini_magick'
gem 'carrierwave', '~> 1.0'
#gem 'cloudinary'
gem "font-awesome-rails"
#gem 'fog'
gem 'lightbox-bootstrap-rails', '5.1.0.1'
#gem 'fancybox2-rails'
gem 'certified'
gem 'mailgunner'
gem 'activemerchant'
gem 'programr'
#gem 'minitest'
#gem 'tether-rails'

# Use jquery as the JavaScript library

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#group :assets do
  gem 'jquery-rails'
  gem 'jquery-ui-rails'
  #gem 'therubyracer'
  gem 'sass-rails', '~> 5.0'
  gem 'coffee-rails', '~> 4.2'
  gem 'uglifier', '>= 1.3.0'
#end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3'
  #gem 'web-console', '>= 3.3.0'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code. 
  gem 'web-console', '>= 3.3.0'
end

group :production do
	gem 'pg'
	gem 'rails_12factor' 
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
