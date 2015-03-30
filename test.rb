ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require_relative 'app.rb'
# Fake Data Base
require './data/db'
require './model/model'
 
include Rack::Test::Methods
 
def app
  Sinatra::Application
end

describe "herobravo" do

  it "should say true" do
    assert hero(2).id == 2
  end
end