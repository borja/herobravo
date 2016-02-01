require 'rubygems'
require 'bundler'
require 'require_all'

# Fake Data Base
require_all './data'

require './model/model'

Bundler.require
require './app.rb'
run App.new
