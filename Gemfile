ruby '2.4.1'
source 'https://rubygems.org'

# Production requirements
gem 'sinatra', github: 'sinatra/sinatra'
gem 'tilt', '~> 2.0.7'
gem 'minitest', '~> 5.10.1'
gem 'require_all', '~> 1.4.0'

# Testing and metrics (not necessary in production)
group :test do
  gem 'rack-test'
  gem 'rspec', '~> 3.5.0'
  gem 'rake', '~> 12.0.0'
  gem 'yaml-lint', '~> 0.0.9'
  gem 'codeclimate-test-reporter', '~> 1.0.8'
  gem 'codacy-coverage', '~> 1.1.6', require: false
  gem 'coveralls', '~> 0.8.19', require: false
  gem 'codecov', '~> 0.1.10', require: false
  gem 'scrutinizer-ocular', require: false
end
