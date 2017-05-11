ruby '2.4.1'
source 'https://rubygems.org'

# Production requirements
gem 'require_all', '~> 1.4.0'
gem 'sinatra', github: 'sinatra/sinatra'
gem 'tilt', '~> 2.0.7'

# Testing and metrics (not necessary in production)
group :test do
  gem 'minitest', '~> 5.10.1'
  gem 'codecov', '~> 0.1.10', require: false
  gem 'coveralls', '~> 0.8.21', require: false
  gem 'rack-test'
  gem 'rake', '~> 12.0.0'
  gem 'rspec', '~> 3.6.0'
  gem 'scrutinizer-ocular', require: false
  gem 'yaml-lint', '~> 0.0.9'
end
