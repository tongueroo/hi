source 'https://rubygems.org'
ruby '2.3.3'

gem 'active_model_serializers', '0.8.3'
gem 'active_record_query_trace'
gem 'activerecord-import'
gem 'attr_extras'
gem 'autoprefixer-rails'
gem 'aws-sdk'
gem 'bootstrap-sass', '~> 3.3.1'
gem 'bourbon'
gem 'canonical-rails'
gem 'coffee-rails', '~> 4.2'
gem 'colored'
gem 'dalli'
gem 'haml-rails'
gem 'high_voltage'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'memcachier'
gem 'sqlite3'
gem 'octokit', github: 'octokit/octokit.rb'
gem 'omniauth-github'
gem 'paranoia', github: 'rubysherpas/paranoia', branch: 'core'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.0'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 3.0'
gem 'redis-namespace'
gem 'rouge', '= 1.10.1'
gem 'sidekiq'
gem 'sidekiq-scheduler'
gem 'sidekiq-middleware', github: 'tongueroo/sidekiq-middleware'
gem 'sinatra', github: 'sinatra', require: nil# gem 'sidekiq-unique-jobs'
gem 'sass-rails', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'dogstatsd-ruby'
# gem 'sidekiq-skylight'
gem 'sentry-raven'

gem 'opal'
gem 'opal-haml'
gem 'opal-jquery'
gem 'opal-browser', github: 'tongueroo/opal-browser' # only use this until
  # opal/opal-browser/pull/64
  # opal/opal-browser/pull/65
  # get released
gem 'opal-rails'
gem 'opal-bootbox', github: 'tongueroo/opal-bootbox'
# Post-install message from opal-rails:
# BEWARE: Spec support is being extracted from `opal-rails` into `opal-rspec-rails`
#         Please use `opal-rspec-rails` or the 0-8-stable branch.
# cannot use opal-rspec yet because it vendors rspec and it's version is out of date
# gem 'opal-rspec'
# gem 'opal-rspec-rails'
# gem 'opal-irb', github: 'fkchang/opal-irb', require: 'opal-irb-rails'
# gem 'jquery-ui-rails'

group :staging, :production do
  gem 'rack-timeout'
  gem 'rails_12factor'
end

group :development do
  gem 'web-console'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'dotenv-rails'
  gem 'foreman'
  gem 'pry'
  gem 'rspec-rails', '~> 3.0'
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.0.5'
  gem 'launchy'
end

group :test do
  gem 'capybara'#, '~> 2.4.0'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'watchr'
  gem 'webmock', require: false
end
