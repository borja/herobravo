require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require_relative 'app.rb'
require 'require_all'

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
      !hero(i).jugador.nil?
      File.exist?(h.big_path)
      hero(i).id.should        be == i
      hero(i).mente.should     be >= 4
      hero(i).cuerpo.should    be >= 4
      hero(i).repo.should      be >= 0
    end
  end
end
