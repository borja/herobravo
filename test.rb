ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require_relative 'app.rb'
require './model/model'
 
include Rack::Test::Methods
 
def app ; Sinatra::Application end

describe ".hero" do

  it "should say true" do
    assert hero(2).id == 2
  end
  it "should say true" do
    heros.each do |h|
      File.exist?(h.big_path)
    end
  end  
end