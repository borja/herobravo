ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require_relative 'app.rb'
require 'require_all'
require 'codeclimate-test-reporter'

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
    heros.each_with_index do |h,i|
      File.exist?(h.big_path)
      hero(i).id == i
      hero(i).personaje != nil
    end
  end

end

CodeClimate::TestReporter.start
