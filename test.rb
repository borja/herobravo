# CI Engines requirements:

require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'codacy-coverage'
Codacy::Reporter.start

require 'coveralls'
Coveralls.wear!

require 'simplecov'
SimpleCov.start

require 'codecov'
SimpleCov.formatter = SimpleCov::Formatter::Codecov

require 'scrutinizer/ocular'
Scrutinizer::Ocular.watch!

ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require_relative 'app.rb'
require 'require_all'
require 'rspec'
require 'yaml-lint'

# Fake Data Base
require_all './data'
require_all './model'
require_all './lib'

include Rack::Test::Methods

def app
  Sinatra::Application
end

describe '.hero' do
  it 'should say true' do
    heros.each_with_index do |h, i|
      !hero(i).personaje.nil?
      !hero(i).nivel.nil?
      !hero(i).jugador.nil?
      File.exist?(h.big_path)
      hero(i).id == i
      hero(i).mente >= 4
      hero(i).cuerpo >= 4
      hero(i).reputacion >= 0
    end
  end
end
